(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(setq standard-indent 2
      scroll-step 1
      make-backup-files nil)
(setq-default indent-tabs-mode nil)

(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(auto-compression-mode t)

(set-terminal-coding-system 'iso-latin-1)

(setq default-frame-alist
      '((font . "Fira Code Medium 13")))
(setq initial-frame-alist
      '((font . "Fira Code Medium 13")))

;; IVY CONFIGURATION

(ivy-mode 1)
(setq ivy-use-virtual-buffers t
      enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)

;; LINE CONFIGURATION

(setq telephone-line-primary-right-separator 'telephone-line-abs-left
      telephone-line-secondary-right-separator 'telephone-line-abs-hollow-left
      telephone-line-height 22)
(telephone-line-mode 1)

;; ZOOM CONFIGURATION

(zoom-mode 1)

;; EVIL CONFIGURATION

(evil-mode 1)