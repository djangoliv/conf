;;;;;;;;;;;;;;;;
;; Theme perso
;;;;;;;;;;;;;;;;

(deftheme djangoliv "The Djangoliv color theme")

;;;; Couleurs par defaut
(cond (window-system
	   (set-foreground-color "wheat")
	   (set-background-color "DarkSlateGray")
	   (set-cursor-color "#7FC2E4")
	   (set-mouse-color "CadetBlue")
	   (set-face-foreground 'menu "wheat")
	   (set-face-background 'menu "DarkSlateGray")
	   (set-face-background 'fringe "DarkSlateGray")
	   (set-face-foreground 'region "white")
	   (set-face-background 'region "SteelBlue")
	   (set-face-background 'tool-bar "DarkSlateGray")))
(custom-set-faces
 `(fringe ((t (:background "#1f4f4f"))))
 `(isearch ((t (:foreground "white" :background "SteelBlue"))))
 `(lazy-highlight ((t (:background "DarkSlateGray4"))))
 `(cua-rectangle ((t (:background "CornflowerBlue" :foreground "white"))))
 `(cursor ((t (:foreground "CadetBlue"))))
 `(header-line ((t (:foreground "white" :background "#0e3f4e" :box (:line-width -1 :style released-button))))))
;;;;; comments
(set-face-italic-p 'font-lock-comment-face t)
;;;;; frame
(add-to-list 'default-frame-alist '(background-color . "DarkSlateGray"))
(add-to-list 'default-frame-alist '(foreground-color . "wheat"))
;;;;; tabbar
(setq tabbar-background-color "DarkSlateGray") ;; the color of the tabbar background
(custom-set-variables
 '(tabbar-scroll-left-button (quote (("") "")))
 '(tabbar-scroll-right-button (quote (("") ""))))
(custom-set-faces
 '(tabbar-default ((t (:height 0.95))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "WhiteSmoke" :background "#1f4f4f" :box '(:line-width 1 :color "whiteSmoke" :style nil)))))
 '(tabbar-separator ((t (:background "gray50"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "WhiteSmoke" :background "#1f4f4f" :bold t :box '(:line-width 1 :color "whiteSmoke" :style nil)))))
 '(tabbar-selected-modified nil :foreground "peru" :bold t :box '(:line-width 1 :color "blue4" :style nil))
 '(tabbar-unselected ((t (:inherit tabbar-default :foreground "DarkGray" :background "#1f4f4f" :bold t :box '(:line-width 1 :color "gray40" :style nil)))))
 '(tabbar-unselected-modified nil :foreground "DarkOrange3" :box '(:line-width 1 :color "gray40" :style nil)))
(dolist (face '(tabbar-default
				tabbar-button
				tabbar-selected
				tabbar-selected-modified
				tabbar-unselected
				tabbar-unselected-modified))
  (put face 'saved-face-comment "modify"))
;;;; dired
(custom-set-faces
 '(dired-filetype-common ((t (:foreground "white"))))
 '(dired-filetype-compress ((t (:foreground "thistle"))))
 '(dired-filetype-image ((t (:foreground "plum"))))
 '(dired-filetype-plain ((t (:foreground "LightGray"))))
 '(dired-filetype-xml ((t (:foreground "WhiteSmoke"))))
 '(dired-header ((t (:foreground "#91ba8a"))))
;;; dired-k
 '(dired-k-directory ((t (:foreground "deepSkyBlue"))))
;;;; nxml
 '(nxml-attribute-local-name ((t (:foreground "burlywood"))))
 '(nxml-element-local-name ((t (:foreground "LightSkyBlue"))))
 '(nxml-tag-delimiter ((t (:foreground "burlywood"))))
;;;; org-mode
 '(org-level-1 ((t (:inherit variable-pitch :height 1.08 :foreground "DeepSkyBlue"))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.03 :foreground "SteelBlue2"))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.02 :foreground "LightSkyBlue"))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.01 :foreground "LightBlue"))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.00 :foreground "LightSteelBlue1"))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.00 :foreground "LightGray"))))
 '(org-level-7 ((t (:inherit outline-7 :height 1.00 :foreground "gray90"))))
 '(org-level-8 ((t (:inherit outline-8 :height 1.00 :foreground "WhiteSmoke"))))
 '(org-checkbox ((t (:foreground "#7BC6E4" :bold t))))
 '(org-checkbox-statistics-todo ((t (:foreground "#DDC5E5" :bold t))))
 '(org-table ((t (:foreground "WhiteSmoke"))))
 '(org-archived ((t (:foreground "#008f80"))))
 '(org-link ((t (:foreground "cyan" :underline t :background "#2e3436")))))
;; org-priority
(setq org-priority-faces '((?A . (:foreground "OrangeRed" :weight "bold" :background "#271363936393"))
                           (?B . (:foreground "orange" :background "#271363936393"))
                           (?C . (:foreground "gold" :background "#271363936393"))))
;; term
(custom-set-faces
 '(term-color-blue ((t (:foreground "DeepSkyBlue"))))
 '(term-color-green  ((t (:foreground "green" :background "DarkGreen")))))
;; minibuffer
(set-face-foreground 'minibuffer-prompt "LightBlue")
;; whitespace-mode
;;(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark space-before-tab space-after-tab)))
(custom-set-faces
 '(trailing-whitespace ((t (:background "#0e3f4e")))))
(setq whitespace-display-mappings '(
									(space-mark 32 [183] [46])
									(newline-mark 10 [182 10])
									(tab-mark 9 [9655 9] [92 9])))
;;;; yascrollbar
(custom-set-faces '(yascroll:thumb-fringe ((t (:foreground "SteelBlue" :background "SteelBlue")))))
;;;; magit
(custom-set-faces '(magit-section-heading ((t (:foreground "gray"))))
				  '(magit-section-highlight ((t (:background "#36115AE15AE1"))))
				  '(magit-diff-context-highlight  ((t (:background "#37115AE15AE1")))))
;;; popup
(custom-set-faces `(popup-scroll-bar-background-face ((t (:background ,"LightSlateGray")))))
;;; cedet
(custom-set-faces '(semantic-decoration-on-unknown-includes ((t (:background "#36115AE15AE1"))))
                  '(semantic-decoration-on-unparsed-includes ((t (:background "#36114AE15AE1")))))
;;; stripe-buffer
(custom-set-faces '(stripe-highlight ((t (:background "#0e4f4e")))))
;;; highlight-current-line
(custom-set-faces '(highlight-current-line-face ((t (:background "#1f4f4f")))))
;;; indent-guide
(custom-set-faces '(indent-guide-face ((t (:foreground "dimgray")))))
;;; markdown
(custom-set-faces '(markdown-header-face-1 ((t (:foreground "DodgerBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-2 ((t (:foreground "LightSkyBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-3 ((t (:foreground "SkyBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-4 ((t (:foreground "LightBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-5 ((t (:foreground "PowderBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-6 ((t (:foreground "PaleTurquoise" :bold t)))))
;;;; rainbow-delimiter
(custom-set-faces
 '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "wheat"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "burlywood"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "tan2"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "tan3"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "sienna2"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "coral2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "tomato"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "firebrick"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red")))))
(eval-after-load "rainbow-delimiters-mode"
  '(progn
	 (defface my-outermost-paren-face
	   '((t (:weight bold)))
	   "Face used for outermost parens.")
	 (setq rainbow-delimiters-outermost-only-face-count 1)
	 (set-face-attribute 'rainbow-delimiters-depth-1-face nil
						 :foreground 'unspecified
						 :inherit 'my-outermost-paren-face)))
;; split window
(set-face-attribute 'vertical-border nil :foreground "CadetBlue")
;; calendar/diary
(custom-set-faces
 '(holiday ((t (:foreground "#A7FF25" :background "#27136393639"))))
 '(calendar-today ((t (:foreground "aquamarine"))))
 '(calendar-weekend-header ((t (:foreground "LightSlateBlue"))))
 '(diary ((t (:foreground "#29FF25" :background "#271363936393"))))
 '(calendar-iso-week-face ((t (:foreground "LightBlue" :height 0.7))))
 '(calendar-today ((t (:foreground "yellow")))))
;; completion
(set-face-attribute 'completions-first-difference nil :foreground "white")
;; company
(custom-set-faces
 '(company-tooltip ((t (:background "skyBlue4" :foreground "gray" :box "#003442"))))
 '(company-tooltip-mouse ((t (:background "skyBlue4"))))
 '(company-scrollbar-bg ((t (:background "gray30"))))
 '(company-scrollbar-fg ((t (:background "#003442"))))
 '(company-tooltip-selection ((t (:foreground "WhiteSmoke" :background "#003442"))))
 '(company-tooltip-common-selection ((t (:foreground "gray50"))))
 '(company-tooltip-common ((t (:foreground "black"))))
 '(company-tooltip-search ((t (:background "white"))))
 '(company-tooltip-annotation  ((t (:foreground "darkBlue")))))
(setq pos-tip-foreground-color "whiteSmoke")
(setq pos-tip-background-color "#003442")
;; autocomplete
(custom-set-faces
 '(ac-candidate-face ((t (:underline "gray")))))
;; highlight-operators
(custom-set-faces
 '(highlight-operators-face ((t (:foreground "burlywood3")))))
;; block source faces
(defface org-block-begin-line
  '((t (:foreground "IndianRed")))"")
(defface org-block-end-line
  '((t (:foreground "IndianRed")))"")
;; logview
(custom-set-faces
 '(logview-information-entry ((t (:background "#1f4f4f"))))
 '(logview-level-debug ((t (:foreground "LightGreen"))))
 '(logview-level-error ((t (:foreground "red"))))
 '(logview-level-warning ((t (:foreground "chocolate")))))
;; vc-annotate
(custom-set-variables
 '(vc-annotate-color-map
   (quote
	(( 20. . "#FF3F3F")
	 ( 40. . "#FF6C3F")
	 ( 60. . "#FF993F")
	 ( 80. . "#FFC63F")
	 (100. . "#FFF33F")
	 (120. . "#DDFF3F")
	 (140. . "#B0FF3F")
	 (160. . "#83FF3F")
	 (180. . "#56FF3F")
	 (200. . "#3FFF56")
	 (220. . "#3FFF83")
	 (240. . "#3FFFB0")
	 (260. . "#3FFFDD")
	 (280. . "#3FF3FF")
	 (300. . "#3FC6FF")
	 (320. . "#3F99FF")
	 (340. . "white")
	 (360. . "LightGray"))))
'(vc-annotate-background "#1f4f4f")
'(vc-annotate-very-old-color "LightGray"))
;;; anzu
(custom-set-faces '(anzu-mode-line ((t (:foreground "LightBlue" :bold t)))))
;;; python
(custom-set-faces '(font-lock-doc-face ((t (:foreground "sienna2")))))
;;;; modeline
(setq line-number-mode nil) ;; deja affiché
(setq-default mode-line-format
			  '("  "
				;; Position, including warning for 200 columns
				(:propertize "%5l" face mode-line-lin-face)
				":"
				(:eval (propertize "%3c" 'face
								   (if (>= (current-column) 200)
									   'mode-line-80col-face
									 'mode-line-col-face))) ;;font-lock-constant-face)))
				;; relative position, size of file
				"  ["
				(:propertize mode-line-position face mode-line-col-face)
				"/"
				(:propertize "%I" face mode-line-col-face) ;; size
				"]  "
				;;emacsclient [default -- keep?]
				mode-line-client
				"  "
				;; read-only or modified status
				(:eval
				 (cond (buffer-read-only
						(propertize " RO " 'face 'mode-line-read-only-face))
					   ((buffer-modified-p)
						(propertize " ** " 'face 'mode-line-modified-face))
					   (t "      ")))
				"  "
				;; directory and buffer/file name
				(:propertize (:eval (shorten-directory default-directory 26))
							 face mode-line-folder-face)

				(:eval (propertize "%b" 'face
								   (if (not (eq major-mode 'dired-mode))
									   'mode-line-filename-face
									 'mode-line-dired-face)))
				" "
				(:eval (propertize "(admin)" 'face (if (string-match "^/su\\(do\\)?:" default-directory)
													   '(:background "darkred" :foreground "white")
													 '(:foreground "#1f4f4f"))))
				;; narrow [default -- keep?]
				" %n "
				;;"  mode
				" "
				(:propertize mode-name face mode-line-col-face)
				" "
				(:eval (if (boundp 'mode-icons-cached-mode-name) (propertize mode-icons-cached-mode-name)))
				;; mode indicators: vc, recursive edit, major mode, minor modes, process, global
				(vc-mode vc-mode)
				"    "
				(:propertize (:eval
							  (let* ((code (symbol-name buffer-file-coding-system))
									 (eol-type (coding-system-eol-type buffer-file-coding-system))
									 (eol (if (eq 0 eol-type) "UNIX"
											(if (eq 1 eol-type) "DOS"
											  (if (eq 2 eol-type) "MAC"
												"")))))
								(concat code " " eol " ")))
							 face mode-line-black-face)
				))

;; Helper function
(defun shorten-directory (dir max-length)
  "Show up to `max-length' characters of a directory name `dir'."
  (let ((path (reverse (split-string (abbreviate-file-name dir) "/")))
		(output ""))
    (when (and path (equal "" (car path)))
      (setq path (cdr path)))
    (while (and path (< (length output) (- max-length 4)))
      (setq output (concat (car path) "/" output))
      (setq path (cdr path)))
    (when path
      (setq output (concat ".../" output)))
    output))

;; Extra mode line faces
(make-face 'mode-line-read-only-face)
(make-face 'mode-line-modified-face)
(make-face 'mode-line-folder-face)
(make-face 'mode-line-filename-face)
(make-face 'mode-line-black-face)
(make-face 'mode-line-mode-face)
(make-face 'mode-line-80col-face)
(make-face 'mode-line-dired-face)
(make-face 'mode-line-col-face)
(make-face 'mode-line-lin-face)
(set-face-attribute 'mode-line-read-only-face nil
					:inherit 'mode-line-face
					:foreground "blue")
(set-face-attribute 'mode-line-folder-face nil
					:inherit 'mode-line-face)
(set-face-attribute 'mode-line-filename-face nil
					:inherit 'mode-line-face
					:foreground "WhiteSmoke")
(set-face-attribute 'mode-line-dired-face nil ;; permet de rendre le filename invisible sous dired
					:inherit 'mode-line-face
					:foreground "#1f4f4f")
(set-face-attribute 'mode-line-black-face nil
					:inherit 'mode-line-face
					:weight 'bold :foreground "black")
(set-face-attribute 'mode-line-mode-face nil
					:inherit 'mode-line-face
					:foreground "MediumBlue")
(set-face-attribute 'mode-line-80col-face nil
					:inherit 'mode-line-black-face
					:foreground "black" :background "Gray50")
(set-face-attribute 'mode-line-col-face nil
					:inherit 'mode-line-face
					:foreground "CadetBlue")
(set-face-attribute 'mode-line-lin-face nil
					:inherit 'mode-line-face
					:foreground "aquamarine")
;; defaut
(set-face-attribute 'mode-line nil
					:foreground "gray70" :background "#1f4f4f"
					:inverse-video nil)
(set-face-attribute 'mode-line-inactive nil
					:foreground "gray70" :background "DarkSlateGray"
					:inverse-video nil)

(defun toggle-mode-line-buffer-name-face (window)
  (with-current-buffer (window-buffer window)
	(if (eq (current-buffer) (window-buffer (selected-window)))
		(progn
		  (face-remap-reset-base 'mode-line-filename-face)
		  (face-remap-reset-base 'mode-line-col-face)
		  (face-remap-reset-base 'mode-line-lin-face)
		  (face-remap-reset-base 'mode-line-black-face))
	  (progn
		(face-remap-set-base 'mode-line-black-face '(:foreground "gray60"))
		(face-remap-set-base 'mode-line-col-face '(:foreground "gray60"))
		(face-remap-set-base 'mode-line-lin-face '(:foreground "gray60"))
		(face-remap-set-base 'mode-line-filename-face '(:foreground "gray60"))))))
(add-hook 'buffer-list-update-hook (lambda () (walk-windows #'toggle-mode-line-buffer-name-face nil t)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Fin mode line
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
