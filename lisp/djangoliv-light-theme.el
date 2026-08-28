;;;;;;;;;;;;;;;;
;; Theme perso
;;;;;;;;;;;;;;;;

(deftheme djangoliv-light "The Djangoliv color theme")

;;;; Couleurs par defaut
(cond (window-system
	   (set-foreground-color "black")
	   (set-background-color "gainsboro")
	   (set-cursor-color "grey")
	   (set-mouse-color "grey")
	   (set-face-foreground 'menu "black")
	   (set-face-background 'menu "gainsboro")
	   (set-face-background 'fringe "gainsboro")
	   (set-face-foreground 'region "black")
	   (set-face-background 'region "grey")
	   (set-face-background 'tool-bar "gainsboro")
       ))
(custom-set-faces
 `(line-number-current-line ((t (:foreground "white" :background "grey"))))
 `(fringe ((t (:background "#143434"))))
 `(isearch ((t (:foreground "white" :background "grey"))))
 `(lazy-highlight ((t (:background "whitesmoke"))))
 `(cua-rectangle ((t (:background "CornflowerBlue" :foreground "white"))))
;; `(cursor ((t (:foreground "grey"))))
 `(header-line ((t (:foreground "white" :background "grey" :height 102 :box (:line-width -1 :style released-button)))))
;;; comments
 `(font-lock-comment-face  ((t (:foreground "peru" :italic t)))))
;; frame
;; (add-to-list 'default-frame-alist '(background-color . "gainsboro"))
;; (add-to-list 'default-frame-alist '(foreground-color . "black"))


;; tabbar
(setq tabbar-background-color "gainsboro") ;; the color of the tabbar background
(custom-set-variables
 '(tabbar-scroll-left-button (quote (("") "")))
 '(tabbar-scroll-right-button (quote (("") ""))))
(custom-set-faces
  '(tab-bar ((t (:background "grey"))))
 '(tab-line ((t (:background "grey"))))
 '(tabbar-default ((t (:height 0.95))))
 '(tabbar-button ((t (:inherit tabbar-default :foreground "black" :background "grey" :box '(:line-width 1 :color "grey" :style nil)))))
 '(tabbar-separator ((t (:background "black"))))
 '(tabbar-selected ((t (:inherit tabbar-default :foreground "black" :background "grey" :bold t :box '(:line-width 1 :color "grey" :style nil)))))
 '(tabbar-selected-modified nil :foreground "peru" :bold t :box '(:line-width 1 :color "grey" :style nil))
 '(tabbar-unselected ((t (:inherit tabbar-default :foreground "Gray50" :background "grey" :bold t :box '(:line-width 1 :color "grey" :style nil)))))
 '(tabbar-unselected-modified nil :foreground "red" :box '(:line-width 1 :color "gray40" :style nil)))
(dolist (face '(tabbar-default
				tabbar-button
				tabbar-selected
				tabbar-selected-modified
				tabbar-unselected
				tabbar-unselected-modified))
  (put face 'saved-face-comment "modify"))

;; centaur-tabs
(custom-set-faces
 '(centaur-tabs-default ((t (:height 1.0))))
 '(centaur-tabs-button ((t (:inherit centaur-tabs-default :foreground "black" :background "lightgrey"))))
 '(centaur-tabs-separator ((t (:background "gray50"))))
 '(centaur-tabs-selected ((t (:inherit centaur-tabs-default :foreground "black" :background "grey" :bold t :overline "lightgray"))))
 '(centaur-tabs-selected-modified ((t (:inherit centaur-tabs-default :foreground "black" :background "lightgrey" :bold t :overline "lightgray"))))
 '(centaur-tabs-unselected ((t (:inherit centaur-tabs-default :foreground "black" :background "grey" :bold t))))
 '(centaur-tabs-unselected-modified ((t (:inherit centaur-tabs-default :foreground "#684a4a" :background "grey" :bold t)))))

;;dired
(custom-set-faces
 '(dired-filetype-common ((t (:foreground "white"))))
 '(dired-filetype-compress ((t (:foreground "thistle"))))
 '(dired-filetype-image ((t (:foreground "plum"))))
 '(dired-filetype-plain ((t (:foreground "gray"))))
 '(dired-filetype-xml ((t (:foreground "WhiteSmoke"))))
 '(dired-header ((t (:foreground "#91ba8a"))))
;;; dired-k
 '(dired-k-directory ((t (:foreground "deepSkyBlue"))))
;;;; nxml
 '(nxml-attribute-local-name ((t (:foreground "burlywood"))))
 '(nxml-element-local-name ((t (:foreground "LightSkyBlue"))))
 '(nxml-tag-delimiter ((t (:foreground "burlywood"))))
;;;; org-mode
 ;; '(org-level-1 ((t (:inherit variable-pitch :height 1.1 :foreground "SteelBlue2"))))
 ;; '(org-level-2 ((t (:inherit outline-2 :height 1.03 :foreground "DeepSkyBlue"))))
 ;; '(org-level-3 ((t (:inherit outline-3 :height 1.02 :foreground "LightSkyBlue"))))
 ;; '(org-level-4 ((t (:inherit outline-4 :height 1.01 :foreground "LightBlue"))))
 ;; '(org-level-5 ((t (:inherit outline-5 :height 1.00 :foreground "LightSteelBlue1"))))
 ;; '(org-level-6 ((t (:inherit outline-6 :height 1.00 :foreground "gray"))))
 ;; '(org-level-7 ((t (:inherit outline-7 :height 1.00 :foreground "gray90"))))
 ;; '(org-level-8 ((t (:inherit outline-8 :height 1.00 :foreground "WhiteSmoke"))))
 '(org-level-1 ((t (:inherit variable-pitch :bold t :height 1.18 :foreground "DeepSkyBlue"))))
 '(org-level-2 ((t (:inherit variable-pitch :bold t :height 1.16 :foreground "SteelBlue2"))))
 '(org-level-3 ((t (:inherit variable-pitch :bold t :height 1.14 :foreground "LightSkyBlue"))))
 '(org-level-4 ((t (:inherit variable-pitch :bold t :height 1.12 :foreground "LightBlue"))))
 '(org-level-5 ((t (:inherit variable-pitch :bold t :height 1.10 :foreground "LightSteelBlue1"))))
 '(org-level-6 ((t (:inherit variable-pitch :bold t :height 1.08 :foreground "gray"))))
 '(org-level-7 ((t (:inherit variable-pitch :bold t :height 1.06 :foreground "gray90"))))
 '(org-level-8 ((t (:inherit variable-pitch :bold t :height 1.04 :foreground "WhiteSmoke"))))
 '(org-checkbox ((t (:foreground "#7BC6E4" :bold t))))
 '(org-checkbox-statistics-todo ((t (:foreground "#DDC5E5" :bold t))))
 '(org-table ((t (:foreground "WhiteSmoke"))))
 '(org-archived ((t (:foreground "#008f80"))))
 '(org-ellipsis ((t (:underline nil))))
 '(org-link ((t (:foreground "cyan" :underline t :background "#2e3436")))))
;;org-priority
(setq org-priority-faces '((?A . (:foreground "OrangeRed" :weight "bold" :background "#271363936393"))
                           (?B . (:foreground "orange" :background "#271363936393"))
                           (?C . (:foreground "gold" :background "#271363936393"))))
;; term
(custom-set-faces
 '(term-color-blue ((t (:foreground "DeepSkyBlue"))))
 '(term-color-green  ((t (:foreground "green" :background "DarkGreen")))))
;; minibuffer
(set-face-foreground 'minibuffer-prompt "black")


;;whitespace-mode
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark space-before-tab space-after-tab)))
(custom-set-faces
 '(trailing-whitespace ((t (:background "WhiteSmoke")))))
(setq whitespace-display-mappings '(
									(space-mark 32 [183] [46])
									(newline-mark 10 [182 10])
									(tab-mark 9 [9655 9] [92 9])))
;;;; yascrollbar
(custom-set-faces '(yascroll:thumb-fringe ((t (:foreground "grey" :background "grey")))))
;;;; magit
(custom-set-faces '(magit-section-heading ((t (:foreground "gray"))))
				  '(magit-section-highlight ((t (:background "whitesmoke"))))
				  '(magit-diff-context-highlight  ((t (:background "grey")))))
;;popup
(custom-set-faces `(popup-scroll-bar-background-face ((t (:background ,"whitesmoke")))))
;;; cedet
(custom-set-faces '(semantic-decoration-on-unknown-includes ((t (:background "whitesmoke"))))
                  '(semantic-decoration-on-unparsed-includes ((t (:background "grey")))))
;;; stripe-buffer
;(custom-set-faces '(stripe-highlight ((t (:background "#083518")))))
;;; highlight-current-line
(custom-set-faces '(highlight-current-line-face ((t (:background "grey")))))
;;; indent-guide
(custom-set-faces '(indent-guide-face ((t (:foreground "dimgray")))))
;;; markdown
(custom-set-faces '(markdown-header-face-1 ((t (:foreground "DodgerBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-2 ((t (:foreground "LightSkyBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-3 ((t (:foreground "SkyBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-4 ((t (:foreground "LightBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-5 ((t (:foreground "PowderBlue" :bold t)))))
(custom-set-faces '(markdown-header-face-6 ((t (:foreground "PaleTurquoise" :bold t)))))
;; rainbow-delimiter
(custom-set-faces
 '(rainbow-delimiters-depth-1-face ((t (:foreground "black"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "black"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "tan"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "burlywood"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "goldenrod"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "sienna2"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "coral2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "tomato"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "firebrick"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red")))))
;; split window
(set-face-attribute 'vertical-border nil :foreground "grey")
;; completion
(set-face-attribute 'completions-first-difference nil :foreground "white")
;; company
(custom-set-faces
 '(company-tooltip ((t (:background "whitesmoke" :foreground "Black"))))
 '(company-tooltip-mouse ((t (:background "skyBlue4"))))
 '(company-scrollbar-bg ((t (:background "gray"))))
 '(company-scrollbar-fg ((t (:background "grey"))))
 '(company-tooltip-selection ((t (:foreground "WhiteSmoke" :background "skyBlue4"))))
 '(company-tooltip-common-selection ((t (:foreground "WhiteSmoke"))))
 '(company-tooltip-common ((t (:foreground "white"))))
 '(company-tooltip-search ((t (:background "WhiteSmoke"))))
 '(company-tooltip-annotation  ((t (:foreground "white")))))
(setq pos-tip-foreground-color "white")
(setq pos-tip-background-color "grey")
;; autocomplete
(custom-set-faces
 '(ac-candidate-face ((t (:underline "gray")))))
;; highlight-operators
(custom-set-faces
 '(highlight-operators-face ((t (:foreground "burlywood3")))))
;; block source faces
(custom-set-faces
 '(org-block-begin-line ((t (:foreground "IndianRed")))"")
 '(org-block-end-line ((t (:foreground "IndianRed")))""))

;; logview
(custom-set-faces
 '(logview-information-entry ((t (:background "grey"))))
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
	 (360. . "gray"))))
'(vc-annotate-background "grey")
'(vc-annotate-very-old-color "gray"))
;;; anzu
(custom-set-faces '(anzu-mode-line ((t (:foreground "Lightgrey" :bold t)))))
;;; python
(custom-set-faces '(font-lock-doc-face ((t (:foreground "sienna2")))))
;; mew
(custom-set-faces
 '(mew-face-header-subject ((t (:foreground "white" :weight bold))))
 '(mew-face-header-from ((t (:foreground "gray90" :weight bold))))
 '(mew-face-header-date ((t (:foreground "gray92"))))
 '(mew-face-header-to ((t (:foreground "gray94"))))
 '(mew-face-header-key ((t (:foreground "lightblue"))))
 '(mew-face-eof-message ((t (:foreground "darkgreen"))))
 '(mew-face-mark-delete ((t (:foreground "darkred"))))
 '(mew-face-mark-unread ((t (:foreground "white"))))
 )

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
\"13 14 3 1\",
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
\"@@@@@@#      \",
\"@@@@@@@      \",
\"@@@@@@@#     \",
\"@@@@@@@@     \",
\"@@@@@@@@#    \",
\"@@@@@@@@@@@  \",
\"@@@@@@@@@@@@#\"};"))
(defun djangoliv-separator-left(color1 color2)
  (djangoliv--state-mark-modeline-dot color1 (interpolate color1 color2) color2
 "/* XPM */
static char * data[] = {
\"13 14 3 1\",
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
\"      @@@@@@@\",
\"     #@@@@@@@\",
\"     @@@@@@@@\",
\"     @@@@@@@@\",
\"    #@@@@@@@@\",
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
			  '(;; Position, including warning for 200 columns
				(:eval (propertize "%5l" 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-lin-face 'mode-line-inactive)))
				":"
				(:eval (propertize "%3c" 'face (if (eq djangoliv-selwin (get-buffer-window))
												   (if (>= (current-column) 200)
													   'mode-line-80col-face
													 'mode-line-col-face) 'mode-line-inactive)))
				;; relative position, size of file
				" ["
				(:propertize mode-line-position face mode-line-col-face)
				"/"
				(:eval (propertize "%I" 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-col-face 'mode-line-inactive))) ;; size
				"]"
				;; read-only or modified status
				(:eval
				 (cond (buffer-read-only
						(propertize " RO " 'face 'mode-line-read-only-face))
					   ((buffer-modified-p)
						(propertize " ** " 'face 'mode-line-modified-face))
					   (t "   ")))
				" "
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-left "white" "grey")
						 (djangoliv-separator-left "grey" "grey")))
				;; directory and buffer/file name
				(:eval (propertize (shorten-directory default-directory 20) 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-folder-face 'mode-line-inactive)))
				;; filename if not dired
				(:eval (if (not (eq major-mode 'dired-mode)) (propertize "%b " 'face (if (eq djangoliv-selwin (get-buffer-window)) 'mode-line-filename-face 'mode-line-inactive))))
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-right "white" "grey")
						 (djangoliv-separator-right "grey" "grey")))
				" "
				(:eval (propertize "(admin)" 'face (if (string-match "^/su\\(do\\)?:" default-directory)
													   '(:background "darkred" :foreground "grey")
													 '(:foreground "grey"))))
				;; narrow [default -- keep?]
				" %n "
				;;"  mode
				" "
                (:propertize mode-name face mode-line-lin-face)
				" "
				(:eval (if (boundp 'mode-icons-cached-mode-name) (propertize mode-icons-cached-mode-name)))
				;; mode indicators: vc, recursive edit, major mode, minor modes, process, global
				(vc-mode vc-mode)
				" "
				(:eval (if (eq djangoliv-selwin (get-buffer-window))
						   (djangoliv-separator-left "WhiteSmoke" "grey")
						 (djangoliv-separator-left "grey" "grey")))
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
						   (djangoliv-separator-right "WhiteSmoke" "grey")
						 (djangoliv-separator-right "grey" "grey")))
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
					:background "gray"
					:foreground "gray")
(set-face-attribute 'mode-line-filename-face nil
					:inherit 'mode-line-folder-face
					:foreground "black")
(set-face-attribute 'mode-line-black-face nil
					:background "grey"
					:weight 'bold :foreground "black")
(set-face-attribute 'mode-line-mode-face nil
					:foreground "MediumBlue")
(set-face-attribute 'mode-line-80col-face nil
					:inherit 'mode-line-black-face
					:foreground "black" :background "Gray50")
(set-face-attribute 'mode-line-col-face nil
					:foreground "black")
(set-face-attribute 'mode-line-lin-face nil
					:foreground "black")
;; defaut
(set-face-attribute 'mode-line nil
					:foreground "black" :background "grey"
					:inverse-video nil)
(set-face-attribute 'mode-line-inactive nil
					:foreground "#2f1f4f" :background "grey"
					:inverse-video nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Fin mode line
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
