;; adjust scroll factor
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
;; set line height
(setq-default line-spacing 3)

;; disable creation of backup files
(setq make-backup-files nil)

(setq-default require-final-newline t)

;; js config stuff
(setq-default
 css-indent-offset 2
 web-mode-markup-indent-offset 2
 web-mode-css-indent-offset 2
 web-mode-code-indent-offset 2
 web-mode-attr-indent-offset 2)

(setq-default js2-basic-offset 2
              js-indent-level 2)

;; auto-completion config
(setq-default
 auto-completion-return-key-behavior 'nil
 auto-completion-tab-key-behavior 'cycle)

;; indentation stuff
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; use web-mode for js instead of js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
