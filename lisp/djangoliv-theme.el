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
 `(header-line ((t (:foreground "white" :background "#1f4f4f" :height 102 :box (:line-width -1 :style released-button)))))
;;; comments
 `(font-lock-comment-face  ((t (:foreground "chocolate1" :italic t)))))
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
 '(org-ellipsis ((t (:underline nil))))
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
;; separator
(defun interpolate (color1 color2)
  "Interpolate between two hex colors, they must be supplied as
hex colors with leading # - Note: this has been implemented
independently, there are functions in hexrgb.el that would help
this out a bit, but I wanted this to require only cl-lib (which
it built in), and nothing else."
  (let* (
		 (c1 (replace-regexp-in-string "#" "" color1))
		 (c2 (replace-regexp-in-string "#" "" color2))
		 (c1r (string-to-number (substring c1 0 2) 16))
		 (c1b (string-to-number (substring c1 2 4) 16))
		 (c1g (string-to-number (substring c1 4 6) 16))
		 (c2r (string-to-number (substring c2 0 2) 16))
		 (c2b (string-to-number (substring c2 2 4) 16))
		 (c2g (string-to-number (substring c2 4 6) 16))
		 (red (/ (+ c1r c2r) 2))
		 (grn (/ (+ c1g c2g) 2))
		 (blu (/ (+ c1b c2b) 2)))
	(format "#%02X%02X%02X" red grn blu)))
(defun djangoliv-separator-right(color1 color2)
  (djangoliv--state-mark-modeline-dot color1 (interpolate color1 color2) color2
  "/* XPM */
static char * data[] = {
\"13 18 3 1\",
\"@ c %s\",
\"# c %s\",
\" c %s\",
\"@            \",
\"@@@          \",
\"@@@@         \",
\"@@@@#        \",
\"@@@@@        \",
\"@@@@@#       \",
\"@@@@@@       \",
\"@@@@@@       \",
\"@@@@@@#      \",
\"@@@@@@@      \",
\"@@@@@@@      \",
\"@@@@@@@#     \",
\"@@@@@@@@     \",
\"@@@@@@@@     \",
\"@@@@@@@@#    \",
\"@@@@@@@@@@   \",
\"@@@@@@@@@@@  \",
\"@@@@@@@@@@@@#\"};"))
(defun djangoliv-separator-left(color1 color2)
  (djangoliv--state-mark-modeline-dot color1 (interpolate color1 color2) color2
 "/* XPM */
static char * data[] = {
\"13 18 3 1\",
\"@ c %s\",
\"# c %s\",
\" c %s\",
\"            @\",
\"          @@@\",
\"         @@@@\",
\"        #@@@@\",
\"        @@@@@\",
\"       #@@@@@\",
\"       @@@@@@\",
\"       @@@@@@\",
\"      #@@@@@@\",
\"      @@@@@@@\",
\"      @@@@@@@\",
\"     #@@@@@@@\",
\"     @@@@@@@@\",
\"     @@@@@@@@\",
\"    #@@@@@@@@\",
\"   @@@@@@@@@@\",
\"  @@@@@@@@@@@\",
\"#@@@@@@@@@@@@\"};"))

(defun djangoliv--state-mark-modeline-dot (color1 color2 color3 img)
  (propertize "    " 'display `(image :type xpm :data ,(format img color1 color2 color3) :ascent center)))

(defvar djangoliv-selwin nil)

(defun djangoliv-is-selected(windows)
  (when (not (minibuffer-window-active-p (frame-selected-window)))
    (setq djangoliv-selwin (selected-window))))

(add-function :before pre-redisplay-function #'djangoliv-is-selected)

(setq-default mode-line-format
			  '("  "
				;; Position, including warning for 200 columns
				(:eval (propertize "%5l" 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-lin-face 'mode-line-inactive)))
				":"
				(:eval (propertize "%3c" 'face (if (eq djangoliv-selwin (get-buffer-window))
												   (if (>= (current-column) 200)
													   'mode-line-80col-face
													 'mode-line-col-face) 'mode-line-inactive)))
				;; relative position, size of file
				"  ["
				(:propertize mode-line-position face mode-line-col-face)
				"/"
				(:eval (propertize "%I" 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-col-face 'mode-line-inactive))) ;; size
				"]  "
				;; read-only or modified status
				(:eval
				 (cond (buffer-read-only
						(propertize " RO " 'face 'mode-line-read-only-face))
					   ((buffer-modified-p)
						(propertize " ** " 'face 'mode-line-modified-face))
					   (t "      ")))
				" "
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-left "#1f443f" "#1f4f4f")
						 (djangoliv-separator-left "#2f4f4f" "#2f4f4f")))
				;; directory and buffer/file name
				(:eval (propertize (shorten-directory default-directory 26) 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-folder-face 'mode-line-inactive)))
				;; filename if not dired
				(:eval (if (not (eq major-mode 'dired-mode)) (propertize "%b " 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-filename-face 'mode-line-inactive))))
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-right "#1f443f" "#1f4f4f")
						 (djangoliv-separator-right "#2f4f4f" "#2f4f4f")))
				" "
				(:eval (propertize "(admin)" 'face (if (string-match "^/su\\(do\\)?:" default-directory)
													   '(:background "darkred" :foreground "white")
													 '(:foreground "#1f4f4f"))))
				;; narrow [default -- keep?]
				" %n "
				;;"  mode
				" "
                (:propertize mode-name face mode-line-lin-face)
				" "
				(:eval (if (boundp 'mode-icons-cached-mode-name) (propertize mode-icons-cached-mode-name)))
				;; mode indicators: vc, recursive edit, major mode, minor modes, process, global
				(vc-mode vc-mode)
				"    "
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-left "#1f443f" "#1f4f4f")
						 (djangoliv-separator-left "#2f4f4f" "#2f4f4f")))
				(:eval (propertize
						(let* ((code (symbol-name buffer-file-coding-system))
							   (eol-type (coding-system-eol-type buffer-file-coding-system))
							   (eol (if (eq 0 eol-type) "UNIX"
									  (if (eq 1 eol-type) "DOS"
										(if (eq 2 eol-type) "MAC"
										  "")))))
						  (concat code "  " eol ""))
						'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-black-face 'mode-line-inactive)))
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-right "#1f443f" "#1f4f4f")
						 (djangoliv-separator-right "#2f4f4f" "#2f4f4f")))
				" "
				(:propertize mode-line-misc-info face mode-line-col-face)
				" "
				mode-line-end-spaces
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
(make-face 'mode-line-col-face)
(make-face 'mode-line-lin-face)
(set-face-attribute 'mode-line-read-only-face nil
					:foreground "blue")
(set-face-attribute 'mode-line-read-only-face nil
					:foreground "blue")
(set-face-attribute 'mode-line-folder-face nil
					:background "#1f443f")
(set-face-attribute 'mode-line-filename-face nil
					:background "#1f443f" :foreground "WhiteSmoke")
(set-face-attribute 'mode-line-black-face nil
					:background "#1f443f"
					:weight 'bold :foreground "black")
(set-face-attribute 'mode-line-mode-face nil
					:foreground "MediumBlue")
(set-face-attribute 'mode-line-80col-face nil
					:inherit 'mode-line-black-face
					:foreground "black" :background "Gray50")
(set-face-attribute 'mode-line-col-face nil
					:foreground "CadetBlue")
(set-face-attribute 'mode-line-lin-face nil
					:foreground "aquamarine")
;; defaut
(set-face-attribute 'mode-line nil
					:foreground "gray70" :background "#1f4f4f"
					:inverse-video nil)
(set-face-attribute 'mode-line-inactive nil
					:foreground "#2f1f4f" :background "#2f4f4f"
					:inverse-video nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Fin mode line
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
