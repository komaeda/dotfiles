;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Set tabs to 2 spaces
(setq default-tab-width 2)
(setq-default tab-width 2)

;; Maximize the window upon startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Use Input Mono as default font
(setq doom-font (font-spec :family "Input Mono" :size 17))

;; Increase font size on MacOS
(if (eq system-type 'darwin)
    (setq doom-font (font-spec :family "Input Mono" :size 18)))
