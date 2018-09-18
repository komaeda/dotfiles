(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(setq standard-indent 2
      scroll-step 1
      make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(auto-compression-mode t)

(if window-system
    (load-theme 'solarized-light t))

(set-terminal-coding-system 'iso-latin-1)

(setq default-frame-alist
      '((font . "Fira Code Medium 13")))
(setq initial-frame-alist
      '((font . "Fira Code Medium 13")))

(defalias 'yes-or-no-p 'y-or-n-p)

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
      telephone-line-height 22
      telephone-line-evil-use-short-tag t)
(telephone-line-mode 1)

;; ZOOM CONFIGURATION

(zoom-mode 1)

;; EVIL CONFIGURATION

(evil-mode 1)

;; MAGIT CONFIGURATION

(global-set-key (kbd "C-x g") 'magit-status)
(require 'evil-magit)