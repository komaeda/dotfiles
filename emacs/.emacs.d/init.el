(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(setq standard-indent 2
      scroll-step 1
      make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(auto-compression-mode t)
(scroll-bar-mode -1)

(if window-system
    (load-theme 'solarized-light t))

(set-terminal-coding-system 'iso-latin-1)

(setq default-frame-alist
      '((font . "Fira Code Medium 14")))
(setq initial-frame-alist
      '((font . "Fira Code Medium 14")))

(defalias 'yes-or-no-p 'y-or-n-p)

(defun split-window-right-and-focus ()
  "Split the window horizontally and focus it."
  (interactive)
  (split-window-right)
  (windmove-right))

(defun split-window-below-and-focus ()
  "Split the window vertically and focus it."
  (interactive)
  (split-window-below)
  (windmove-down))

;; IVY CONFIGURATION

(ivy-mode 1)
(setq ivy-use-virtual-buffers t
      enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)

;; LINE CONFIGURATION

(setq telephone-line-primary-left-separator 'telephone-line-flat
      telephone-line-secondary-left-separator 'telephone-line-flat
      telephone-line-primary-right-separator 'telephone-line-flat
      telephone-line-secondary-right-separator 'telephone-line-flat
      telephone-line-height 24)
(telephone-line-mode 1)

;; ZOOM CONFIGURATION

(zoom-mode 0)
(setq zoom-ignored-buffer-names '("which-key"))

;; EVIL CONFIGURATION

(global-evil-leader-mode)
(evil-mode 1)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "<SPC>" 'counsel-M-x
  "ff" 'find-file
  "fs" 'save-some-buffers
  "pp" 'counsel-projectile-switch-project
  "pf" 'counsel-projectile-find-file
  "hk" 'describe-key
  "hf" 'describe-function
  "hv" 'describe-variable
  "gs" 'magit-status
  "wv" 'split-window-below
  "wV" 'split-window-below-and-focus
  "ws" 'split-window-right
  "wS" 'split-window-right-and-focus
  "wd" 'delete-window
  "wD" 'delete-other-windows
  "ww" 'other-window
  "bd" 'kill-current-buffer
  "bp" 'previous-buffer
  "bn" 'next-buffer)

;; MAGIT CONFIGURATION

(global-set-key (kbd "C-c g") 'magit-status)
(require 'evil-magit) ;; no idea why this has to be required explicitly

;; WHICH-KEY CONFIGURATION

(which-key-mode)
(which-key-setup-side-window-right)
(which-key-add-key-based-replacements
  "<SPC> f" "files"
  "<SPC> p" "projectile"
  "<SPC> h" "help"
  "<SPC> g" "git"
  "<SPC> w" "windows"
  "<SPC> b" "buffers")

;; PROJECTILE CONFIGURATION

(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(counsel-projectile-mode)
