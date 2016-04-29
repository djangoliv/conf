;;;;;;;;;;;;;;;;
;; Theme perso
;;;;;;;;;;;;;;;;

(deftheme djangoliv "The Djangoliv color theme")

;;;; Couleurs par defaut
(cond (window-system
	   (set-foreground-color "wheat")
	   (set-background-color "DarkSlateGray")
	   (set-cursor-color "CornflowerBlue")
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
 `(header-line ((t (:foreground "white" :background "#0e3f4e" :box (:line-width -1 :style released-button))))))
;;;;; frame
(add-to-list 'default-frame-alist '(background-color . "darkslategray"))
(add-to-list 'default-frame-alist '(foreground-color . "wheat"))
;;;;; tabbar
(setq tabbar-background-color "DarkSlateGray") ;; the color of the tabbar background
;;;; dired
(custom-set-faces
 '(dired-filetype-common ((t (:foreground "White"))))
 '(dired-filetype-compress ((t (:foreground "thistle"))))
 '(dired-filetype-image ((t (:foreground "plum"))))
 '(dired-filetype-plain ((t (:foreground "lightgray"))))
 '(dired-filetype-xml ((t (:foreground "whitesmoke"))))
 '(dired-header ((t (:foreground "#91ba8a"))))
;;;; nxml
 '(nxml-attribute-local-name ((t (:foreground "burlywood"))))
 '(nxml-element-local-name ((t (:foreground "lightskyblue"))))
 '(nxml-tag-delimiter ((t (:foreground "burlywood"))))
;;;; org-mode
 '(org-level-1 ((t (:inherit variable-pitch :height 1.11 :foreground "#00cbcd"))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.03 :foreground "deepskyblue"))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.02 :foreground "lightskyblue"))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.01 :foreground "lightblue"))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.00 :foreground "lightsteelblue"))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.00 :foreground "thistle"))))
 '(org-level-7 ((t (:inherit outline-7 :height 1.00 :foreground "Gray90"))))
 '(org-level-8 ((t (:inherit outline-8 :height 1.00 :foreground "white"))))
 '(org-checkbox ((t (:foreground "#7BC6E4" :bold t))))
 '(org-checkbox-statistics-todo ((t (:foreground "#DDC5E5" :bold t))))
 '(org-table ((t (:foreground "whitesmoke"))))
 '(org-archived ((t (:foreground "#008f80"))))
 '(org-link ((t (:foreground "Cyan" :underline t :background "#2e3436")))))
;; org-priority
(setq org-priority-faces '((?A . (:foreground "OrangeRed" :weight "bold" :background "#271363936393"))
                           (?B . (:foreground "orange" :background "#271363936393"))
                           (?C . (:foreground "gold" :background "#271363936393"))))
;; term
(custom-set-faces
 '(term-color-blue ((t (:foreground "DeepSkyBlue"))))
 '(term-color-green  ((t (:foreground "green" :background "darkgreen")))))
;; minibuffer
(set-face-foreground 'minibuffer-prompt "lightBlue")
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
(custom-set-faces `(popup-scroll-bar-background-face ((t (:background ,"lightSlateGray")))))
;;; cedet
(custom-set-faces '(semantic-decoration-on-unknown-includes ((t (:background "#36115AE15AE1"))))
                  '(semantic-decoration-on-unparsed-includes ((t (:background "#36114AE15AE1")))))
;;; stripe-buffer
(custom-set-faces '(stripe-highlight ((t (:background "#0e4f4e")))))
;;; highlight-current-line
(custom-set-faces '(highlight-current-line-face ((t (:background "#1f4f4f")))))
;;;; rainbow-delimiter
(custom-set-faces
 '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "wheat"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "burlywood"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "Tan2"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "Tan3"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "Sienna2"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "Coral2"))))
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

;; block source faces
(defface org-block-begin-line
  '((t (:foreground "firebrick")))"")
(defface org-block-end-line
  '((t (:foreground "firebrick")))"")
(setq org-todo-keyword-faces
	  (quote
	   (("TODO" :foreground "red" :weight bold)
		("IN-PROGRESS" :foreground "orange" :weight bold)
		("WAIT" :foreground "cornsilk" :weight bold)
		("VALID" :foreground "coral" :weight bold)
		("CANCELED" :foreground "blue" :weight bold)
        ("NEEDSREVIEW" :foreground "firebrick" :weight bold))))
(setq org-todo-keywords
	  (quote
	   ((sequence "TODO(t)" "IN-PROGRESS(i)" "WAIT(w)" "VALID(v)" "|" "DONE(d!)" "CANCELED(c@)" "NEEDSREVIEW(n@/!)"))))

;; calendar
(set-face-attribute 'holiday nil :foreground "black" :background "lightslategray")
(set-face-attribute 'calendar-today nil :foreground "black" :background "lightblue")
(set-face-attribute 'calendar-weekend-header nil :foreground "lightslateblue")

;;vc-annotate
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
	 (360. . "lightgray"))))
'(vc-annotate-background "#1f4f4f")
'(vc-annotate-very-old-color "lightgray"))

;;;; modeline
(setq line-number-mode nil) ;; deja affiché
(setq-default mode-line-format
			  '("  "
				;; Position, including warning for 200 columns
				(:propertize "%5l" face font-lock-constant-face)
				":"
				(:eval (propertize "%3c" 'face
								   (if (>= (current-column) 200)
									   'mode-line-80col-face
									 'mode-line-col-face))) ;;font-lock-constant-face)))
				;; relative position, size of file
				"  ["
				mode-line-position
				"/"
				(:propertize "%I" 'face 'font-lock-constant-face) ;; size
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
				(:propertize "%m" face mode-line-mode-face 'help-echo buffer-file-coding-system)
				" "
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
(set-face-attribute 'mode-line-read-only-face nil
					:inherit 'mode-line-face
					:foreground "blue")
(set-face-attribute 'mode-line-folder-face nil
					:inherit 'mode-line-face)
(set-face-attribute 'mode-line-filename-face nil
					:inherit 'mode-line-face
					:foreground "whitesmoke")
(set-face-attribute 'mode-line-dired-face nil ;; permet de rendre le filename invisible sous dired
					:inherit 'mode-line-face
					:foreground "#1f4f4f")
(set-face-attribute 'mode-line-black-face nil
					:inherit 'mode-line-face
					:weight 'bold :foreground "black")
(set-face-attribute 'mode-line-mode-face nil
					:inherit 'mode-line-face
					:foreground "mediumblue")
(set-face-attribute 'mode-line-80col-face nil
					:inherit 'mode-line-black-face
					:foreground "black" :background "Gray50")
(set-face-attribute 'mode-line-col-face nil
					:inherit 'mode-line-face
					:foreground "cadetblue")
;; defaut
(set-face-attribute 'mode-line nil
					:foreground "Gray60" :background "#1f4f4f"
					:inverse-video nil)
(set-face-attribute 'mode-line-inactive nil
					:foreground "Gray60" :background "DarkSlateGray"
					:inverse-video nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Fin mode line
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
