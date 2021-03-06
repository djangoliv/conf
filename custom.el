(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-ispell-fuzzy-limit 1)
 '(ac-ispell-requires 4)
 '(comint-completion-addsuffix t)
 '(comint-completion-autolist t)
 '(comint-input-ignoredups t)
 '(comint-move-point-for-output t)
 '(comint-scroll-show-maximum-output t)
 '(comint-scroll-to-bottom-on-input t)
 '(doc-view-resolution 100)
 '(ecb-options-version "2.40")
 '(ecb-tree-buffer-style (quote image))
 '(fill-column 200)
 '(jdee-compile-option-classpath nil)
 '(jdee-enable-abbrev-mode t)
 '(jdee-help-browser-function "w3m-browse-url")
 '(jdee-jdk (quote ("1.7.0_05")))
 '(jdee-jdk-doc-url "~/Outils/jdk-doc/docs/api/")
 '(mouse-wheel-scroll-amount (quote (3 ((shift) . 1) ((control)))))
 '(org-file-apps
   (quote
	((auto-mode . emacs)
	 ("\\.mm\\'" . default)
	 ("\\.x?html?\\'" . default)
	 ("\\.pdf\\'" . emacs))))
 '(org-link-frame-setup
   (quote
	((vm . vm-visit-folder-other-frame)
	 (vm-imap . vm-visit-imap-folder-other-frame)
	 (gnus . org-gnus-no-new-news)
	 (file . find-file)
	 (wl . wl-other-frame))))
 '(revert-without-query (quote (".*py")))
 '(semantic-lex-c-preprocessor-symbol-map
   (quote
	(("__cplusplus" . "")
	 ("__DBL_MIN_EXP__" . "(-1021)")
	 ("__FLT_MIN__" . "1.17549435e-38F")
	 ("__CHAR_BIT__" . "8")
	 ("__WCHAR_MAX__" . "2147483647")
	 ("__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1" . "1")
	 ("__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2" . "1")
	 ("__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4" . "1")
	 ("__DBL_DENORM_MIN__" . "4.9406564584124654e-324")
	 ("__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8" . "1")
	 ("__FLT_EVAL_METHOD__" . "0")
	 ("__unix__" . "1")
	 ("__x86_64" . "1")
	 ("__DBL_MIN_10_EXP__" . "(-307)")
	 ("__FINITE_MATH_ONLY__" . "0")
	 ("__LP64__" . "1")
	 ("__GNUC_PATCHLEVEL__" . "7")
	 ("__DEC64_MAX_EXP__" . "385")
	 ("__SHRT_MAX__" . "32767")
	 ("__LDBL_MAX__" . "1.18973149535723176502e+4932L")
	 ("__linux" . "1")
	 ("__DEC32_EPSILON__" . "1E-6DF")
	 ("__unix" . "1")
	 ("__LDBL_MAX_EXP__" . "16384")
	 ("__linux__" . "1")
	 ("__SCHAR_MAX__" . "127")
	 ("__DBL_DIG__" . "15")
	 ("__SIZEOF_INT__" . "4")
	 ("__SIZEOF_POINTER__" . "8")
	 ("__STDC_HOSTED__" . "1")
	 ("__LDBL_HAS_INFINITY__" . "1")
	 ("__FLT_EPSILON__" . "1.19209290e-7F")
	 ("__GXX_WEAK__" . "1")
	 ("__LDBL_MIN__" . "3.36210314311209350626e-4932L")
	 ("__DEC32_MAX__" . "9.999999E96DF")
	 ("__SIZEOF_LONG__" . "8")
	 ("__DECIMAL_DIG__" . "21")
	 ("__gnu_linux__" . "1")
	 ("__LDBL_HAS_QUIET_NAN__" . "1")
	 ("__GNUC__" . "4")
	 ("__GXX_RTTI" . "1")
	 ("__MMX__" . "1")
	 ("__FLT_HAS_DENORM__" . "1")
	 ("__SIZEOF_LONG_DOUBLE__" . "16")
	 ("__BIGGEST_ALIGNMENT__" . "16")
	 ("__DBL_MAX__" . "1.7976931348623157e+308")
	 ("__DBL_HAS_INFINITY__" . "1")
	 ("__DEC32_MIN_EXP__" . "(-94)")
	 ("__LDBL_HAS_DENORM__" . "1")
	 ("__cplusplus" . "1")
	 ("__DEC128_MAX__" . "9.999999999999999999999999999999999E6144DL")
	 ("__DEC32_MIN__" . "1E-95DF")
	 ("__DEPRECATED" . "1")
	 ("__DBL_MAX_EXP__" . "1024")
	 ("__DEC128_EPSILON__" . "1E-33DL")
	 ("__SSE2_MATH__" . "1")
	 ("__amd64" . "1")
	 ("__GNUG__" . "4")
	 ("__LONG_LONG_MAX__" . "9223372036854775807LL")
	 ("__SIZEOF_SIZE_T__" . "8")
	 ("__SIZEOF_WINT_T__" . "4")
	 ("__GCC_HAVE_DWARF2_CFI_ASM" . "1")
	 ("__GXX_ABI_VERSION" . "1002")
	 ("__FLT_MIN_EXP__" . "(-125)")
	 ("__DBL_MIN__" . "2.2250738585072014e-308")
	 ("__FLT_MIN_10_EXP__" . "(-37)")
	 ("__DECIMAL_BID_FORMAT__" . "1")
	 ("__DEC128_MIN__" . "1E-6143DL")
	 ("__DBL_HAS_DENORM__" . "1")
	 ("__NO_INLINE__" . "1")
	 ("__FLT_MANT_DIG__" . "24")
	 ("__DEC64_EPSILON__" . "1E-15DD")
	 ("__DEC128_MIN_EXP__" . "(-6142)")
	 ("unix" . "1")
	 ("__ELF__" . "1")
	 ("__FLT_RADIX__" . "2")
	 ("__LDBL_EPSILON__" . "1.08420217248550443401e-19L")
	 ("__GNUC_RH_RELEASE__" . "3")
	 ("__k8" . "1")
	 ("__SIZEOF_PTRDIFF_T__" . "8")
	 ("__x86_64__" . "1")
	 ("__DEC32_SUBNORMAL_MIN__" . "0.000001E-95DF")
	 ("__FLT_HAS_QUIET_NAN__" . "1")
	 ("__FLT_MAX_10_EXP__" . "38")
	 ("__LONG_MAX__" . "9223372036854775807L")
	 ("__DEC128_SUBNORMAL_MIN__" . "0.000000000000000000000000000000001E-6143DL")
	 ("__FLT_HAS_INFINITY__" . "1")
	 ("__DEC64_MAX__" . "9.999999999999999E384DD")
	 ("__DEC64_MANT_DIG__" . "16")
	 ("__DEC32_MAX_EXP__" . "97")
	 ("linux" . "1")
	 ("__SSE2__" . "1")
	 ("__EXCEPTIONS" . "1")
	 ("__LDBL_MANT_DIG__" . "64")
	 ("__DBL_HAS_QUIET_NAN__" . "1")
	 ("__k8__" . "1")
	 ("__WCHAR_TYPE__" . "int")
	 ("__SIZEOF_FLOAT__" . "4")
	 ("__DEC64_MIN_EXP__" . "(-382)")
	 ("__FLT_DIG__" . "6")
	 ("__INT_MAX__" . "2147483647")
	 ("__amd64__" . "1")
	 ("__FLT_MAX_EXP__" . "128")
	 ("__DBL_MANT_DIG__" . "53")
	 ("__DEC64_MIN__" . "1E-383DD")
	 ("__SIZEOF_SHORT__" . "2")
	 ("__SSE__" . "1")
	 ("__LDBL_MIN_EXP__" . "(-16381)")
	 ("__LDBL_MAX_10_EXP__" . "4932")
	 ("__DBL_EPSILON__" . "2.2204460492503131e-16")
	 ("_LP64" . "1")
	 ("__SIZEOF_WCHAR_T__" . "4")
	 ("__DEC_EVAL_METHOD__" . "2")
	 ("__INTMAX_MAX__" . "9223372036854775807L")
	 ("__FLT_DENORM_MIN__" . "1.40129846e-45F")
	 ("__FLT_MAX__" . "3.40282347e+38F")
	 ("__SIZEOF_DOUBLE__" . "8")
	 ("__DEC128_MAX_EXP__" . "6145")
	 ("__GNUC_MINOR__" . "4")
	 ("__DEC32_MANT_DIG__" . "7")
	 ("__DBL_MAX_10_EXP__" . "308")
	 ("__LDBL_DENORM_MIN__" . "3.64519953188247460253e-4951L")
	 ("__STDC__" . "1")
	 ("__DEC64_SUBNORMAL_MIN__" . "0.000000000000001E-383DD")
	 ("__DEC128_MANT_DIG__" . "34")
	 ("__LDBL_MIN_10_EXP__" . "(-4931)")
	 ("__SSE_MATH__" . "1")
	 ("__SIZEOF_LONG_LONG__" . "8")
	 ("__LDBL_DIG__" . "18")
	 ("__GNUC_GNU_INLINE__" . "1")
	 ("_GNU_SOURCE" . "1")
	 ("PretrtM_CMD"))))
 '(term-bind-key-alist
   (quote
	(("C-c C-c" . term-interrupt-subjob)
	 ("C-p" . term-send-up)
	 ("C-n" . term-send-down)
	 ("C-s" . term-send-raw)
	 ("C-r" . term-send-raw)
	 ("C-m" . term-send-raw)
	 ("C-c C-y" . yank)
	 ("C-_" . term-send-raw)
	 ("M-f" . term-send-forward-word)
	 ("M-b" . term-send-backward-word)
	 ("M-K" . term-send-kill-line)
	 ("M-p" . previous-line)
	 ("M-n" . next-line)
	 ("M-y" . yank-pop)
	 ("M-." . term-send-raw-meta)
	 ("C-k" . term-send-raw))))
 '(term-default-bg-color "white")
 '(term-default-fg-color "black")
 '(term-scroll-to-bottom-on-output t)
 '(term-unbind-key-list (quote ("C-x" "C-h" "<ESC>" "C-k")))
 '(tool-bar-originally-present nil t)
 '(toolbar-visible-p nil)
 '(yas-trigger-key "s-C-<tab>"))
 '(truncate-lines nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cfw:face-annotation ((t :foreground "RosyBrown" :inherit cfw:face-day-title)))
 '(cfw:face-day-title ((t :background "white10")))
 '(cfw:face-default-content ((t :foreground "#bfebbf")))
 '(cfw:face-default-day ((t :weight bold :inherit cfw:face-day-title)))
 '(cfw:face-disable ((t :foreground "white" :inherit cfw:face-day-title)))
 '(cfw:face-grid ((t :foreground "White")))
 '(cfw:face-header ((t (:foreground "#d0bf8f" :weight bold))))
 '(cfw:face-holiday ((t :background "grey10" :foreground "#8c5353" :weight bold)))
 '(cfw:face-periods ((t :foreground "cyan")))
 '(cfw:face-saturday ((t :foreground "#8cd0d3" :background "grey10" :weight bold)))
 '(cfw:face-select ((t :background "#2f2f2f")))
 '(cfw:face-sunday ((t :foreground "#cc9393" :background "grey10" :weight bold)))
 '(cfw:face-title ((t (:foreground "#f0dfaf" :weight bold :height 2.0 :inherit variable-pitch))))
 '(cfw:face-today ((t :background: "white" :weight bold)))
 '(cfw:face-today-title ((t :background "#7f9f7f" :weight bold)))
 '(cfw:face-toolbar ((t :foreground "Steelblue4" :background "Steelblue4")))
 '(cfw:face-toolbar-button-off ((t :foreground "white" :weight bold)))
 '(cfw:face-toolbar-button-on ((t :foreground "white" :weight bold)))
 '(dired-filetype-common ((t (:foreground "White"))))
 '(dired-filetype-compress ((t (:foreground "thistle"))))
 '(dired-filetype-image ((t (:foreground "plum"))))
 '(dired-filetype-link ((t (:foreground "cyan"))))
 '(dired-filetype-plain ((t (:foreground "light gray"))))
 '(dired-filetype-xml ((t (:foreground "white smoke"))))
 '(org-level-1 ((t (:inherit variable-pitch :height 1.11 :foreground "cyan3"))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.03 :foreground "deep sky blue"))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.02 :foreground "light sky blue"))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.01 :foreground "light blue"))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0 :foreground "light steel blue"))))
 '(org-level-6 ((t (:inherit outline-6 :height 1.0 :foreground "thistle"))))
 '(org-level-7 ((t (:inherit outline-7 :height 1.0 :foreground "gray90"))))
 '(org-level-8 ((t (:inherit outline-8 :height 1.0 :foreground "white"))))
 '(org-link ((t (:foreground "cyan1" :underline t :background "#2e3436"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "red")))))
