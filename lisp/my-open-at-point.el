;;; my-open-at-point.el --- DWIM open (file or git commit) via emacsclient

(require 'thingatpt)
(require 'seq)

;; ----------------------------
;; Utils
;; ----------------------------

(defun my/file-exists-p (path)
  (and path (file-exists-p path)))

(defun my/first-existing (paths)
  (seq-find #'my/file-exists-p paths))

;; ----------------------------
;; Transformations
;; ----------------------------

(defun my/transform-elc-to-el (path)
  (when (string-match "\\.elc\\'" path)
    (replace-regexp-in-string "\\.elc\\'" ".el" path)))

(defun my/transform-substitute-env (path)
  (substitute-in-file-name path))

(defun my/transform-add-el (path)
  (concat path ".el"))

(defun my/transform-remove-colon (path)
  (replace-regexp-in-string ":" "" path))

(defun my/transform-remove-after-colon (path)
  (replace-regexp-in-string ":.*" "" path))

(defun my/transform-git-a (path)
  (replace-regexp-in-string "^a/" "./" path))

(defun my/transform-git-b (path)
  (replace-regexp-in-string "^b/" "./" path))

(defun my/transform-weird-i (path)
  (replace-regexp-in-string "\\$i\\'" "0" path))

(defun my/transform-workspace (path)
  (concat "/home/ogiorgis/workspace/" path))

(defun my/transform-trim-quotes (path)
  (replace-regexp-in-string "^['\"]\\|['\"]$" "" path))

(defun my/transform-trim-brackets (path)
  (replace-regexp-in-string "^[[(]\\|[])]$" "" path))

(defun my/transform-file-url (path)
  (when (string-match "\\`file://\\(.*\\)" path)
    (match-string 1 path)))

(defun my/transform-remove-github-line (path)
  (replace-regexp-in-string "#L[0-9]+\\'" "" path))

(defun my/transform-final-clean (path)
  (when path
    (string-trim
     (replace-regexp-in-string "[,;.)\\[\\]]+$" "" path))))

;; ----------------------------
;; Pipeline
;; ----------------------------

(defvar my/path-transformers
  '(identity
    my/transform-trim-brackets
    my/transform-trim-quotes
    my/transform-elc-to-el
    my/transform-substitute-env
    my/transform-add-el
    my/transform-remove-colon
    my/transform-remove-after-colon
    my/transform-git-a
    my/transform-git-b
    my/transform-remove-github-line
    my/transform-weird-i
    my/transform-file-url
    my/transform-workspace
    my/transform-final-clean
    ))

(defun my/apply-transformers-recursively (path transformers)
  "Apply TRANSFORMERS recursively to PATH."
  (let ((results (list path)))
    (dolist (fn transformers)
      (setq results
            (delete-dups
             (append results
                     (delq nil
                           (mapcar (lambda (p)
                                     (ignore-errors (funcall fn p)))
                                   results))))))
    results))

(defun my/resolve-path (path)
  (let* ((candidates (my/apply-transformers-recursively path my/path-transformers))
         (existing (seq-find #'file-exists-p candidates)))
    existing))

;; ----------------------------
;; Emacsclient helpers
;; ----------------------------

(defun my/send-file-to-server (file line)
  (shell-command
   (format "emacsclient -n +%s %s" line file)))

(defun my/send-commit-to-server (hash)
  (let ((sexp `(let ((default-directory ,default-directory))
                 (require 'magit)
                 (magit-show-commit ,hash))))
    (shell-command
     (concat "emacsclient -n -e "
             (shell-quote-argument (prin1-to-string sexp))))))

;; ----------------------------
;; Detection
;; ----------------------------

(defun my/get-line-number-from-line (line)
  (or (when (string-match ":[0-9]+" line)
        (substring line (1+ (match-beginning 0)) (match-end 0)))
      (when (string-match "line [0-9]+" line)
        (substring line (+ 5 (match-beginning 0)) (match-end 0)))
      "0"))

(defun my/get-git-hash-at-point ()
  (let ((line (thing-at-point 'line t)))
    (when (and line
               (string-match "\\b[0-9a-fA-F]\\{7,40\\}\\b" line))
      (match-string 0 line))))

;; ----------------------------
;; Main DWIM function
;; ----------------------------

(defun my/open-at-cursor-dwim ()
  (interactive)
  (let* ((line (thing-at-point 'line t))
         (hash (my/get-git-hash-at-point))
         (line-number (my/get-line-number-from-line line))
         (raw-path (if (region-active-p)
                       (buffer-substring-no-properties
                        (region-beginning) (region-end))
                     (thing-at-point 'filename t))))

    (cond
     ;; --- Git commit ---
     (hash
      (message "Commit détecté: %s" hash)
      (my/send-commit-to-server hash))

     ;; --- URL ---
     ((and raw-path (string-match-p "\\`https?://" raw-path))
      (browse-url raw-path))

     ;; --- File ---
     (t
      (let ((resolved (my/resolve-path raw-path)))
        (if resolved
            (my/send-file-to-server resolved line-number)
          (when (y-or-n-p (format "file doesn't exist: 「%s」. Create?" raw-path))
            (my/send-file-to-server raw-path line-number))))))))

(provide 'my-open-at-point)