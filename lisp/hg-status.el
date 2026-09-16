;;; hg-status.el --- mercurial status in the modeline  -*- lexical-binding: t; -*-

(require 'cl-lib)
(require 'vc-hg)
(add-to-list 'vc-handled-backends 'Hg)

(defvar hg-status-state-mark-modeline t
  "modeline mark display or not")

(defsubst hg-status-interprete-state-mode-color (stat)
  "Interpret vc-hg-state symbol to mode line color"
  (cl-case stat
    (edited "tomato")
    (up-to-date "GreenYellow")
    (unknown  "gray")
    (added    "blue")
    (deleted  "gray30")
    (missing  "gray30")
    (removed  "gray30")
    (ignored  "gray30")
    (unregistered  "gray30")
    (unmerged "purple")
    (t "red")))

(defun hg-status-update-modeline ()
  "Update modeline state dot mark properly"
  (when (and buffer-file-name (hg-status-in-vc-mode?))
    (hg-status-update-state-mark
     (hg-status-interprete-state-mode-color
      (vc-hg-state buffer-file-name)))))

(defun hg-status-update-state-mark (color)
  (hg-status-uninstall-state-mark-modeline)
  (hg-status-install-state-mark-modeline color))

(defun hg-status-uninstall-state-mark-modeline ()
  (setq mode-line-format
        (cl-remove-if #'(lambda (mode) (eq (car-safe mode)
                                        'hg-status-state-mark-modeline))
                   mode-line-format))
  (force-mode-line-update t))

(defun hg-status-install-state-mark-modeline (color)
  ;; (push `(hg-status-state-mark-modeline
  ;;         ,(vc-hg-branch-name)) mode-line-format)
  (push `(hg-status-state-mark-modeline
          ,(hg-status-state-mark-modeline-dot color))
        mode-line-format)
  (force-mode-line-update t))

(defun hg-substring-no-properties (string &optional from to)
  (if (fboundp 'substring-no-properties)
      (substring-no-properties string from to)
    (substring string (or from 0) to)))

(defun hg-status-in-vc-mode? ()
  "Is vc-hg active?"
  (interactive)
  (and vc-mode (string-match "^ HG" (hg-substring-no-properties vc-mode))))

(defun hg-status-state-mark-modeline-dot (color)
  (propertize "    "
              'display
              `(image :type xpm
                      :data ,(format "/* XPM */
static char * data[] = {
\"18 13 3 1\",
\"  c None\",
\"+ c #000000\",
\". c %s\",
\"                  \",
\"       +++++      \",
\"      +.....+     \",
\"     +.......+    \",
\"    +.........+   \",
\"    +.........+   \",
\"    +.........+   \",
\"    +.........+   \",
\"    +.........+   \",
\"     +.......+    \",
\"      +.....+     \",
\"       +++++      \",
\"                  \"};"
                                     color)
                      :ascent center)))

(defun vc-hg-branch-name ()
  "get branch name."
  (let ((default-directory (file-name-directory (buffer-file-name))))
    (concat
     (vc-hg-dir-extra-header "" "id" "-b")
     )))

(defun hg-status--refresh (&rest _)
  "Refresh the modeline mark after vc updates the file state."
  (when (hg-status-in-vc-mode?) (hg-status-update-modeline)))

(advice-add 'vc-after-save :after #'hg-status--refresh)
(advice-add 'vc-refresh-state :after #'hg-status--refresh)

(provide 'hg-status)
