;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Maximize the window upon startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Use Input Mono as default font
(setq doom-font (font-spec :family "Input Mono" :size 14))

;; Increase font size on MacOS
(if (eq system-type 'darwin)
    (setq doom-font (font-spec :family "Input Mono" :size 18)))
