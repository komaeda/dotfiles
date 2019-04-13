(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(setq standard-indent 2
      scroll-step 1
      make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq explicit-shell-file-name "/bin/fish")
(setq mac-command-modifier 'control)

(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(auto-compression-mode t)
(scroll-bar-mode -1)

(if window-system
    (load-theme 'afternoon t))

(set-terminal-coding-system 'iso-latin-1)

(setq initial-frame-alist
      '((font . "Fira Code 16")))

(if (eq system-type 'darwin)
    (setq initial-frame-alist
          '((font . "Fira Code 22"))))

(add-to-list 'default-frame-alist '(fullscreen . maximized))

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

(autopair-global-mode)
(setq js-indent-level 2)

;; LIGATURE SUPPORT

(when (window-system)
  (set-frame-font "Fira Code"))

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

(defun f/kill-emacs ()
  (interactive)
  (save-some-buffers)
  (kill-emacs))

(defun f/find-dotfile ()
  (interactive)
  (find-file-existing "~/code/komaeda/dotfiles/emacs/.emacs.d/init.el"))

(defun f/reload-dotfile ()
  (interactive)
  (load-file "~/code/komaeda/dotfiles/emacs/.emacs.d/init.el"))

(global-evil-leader-mode)
(evil-mode 1)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "<SPC>" 'counsel-M-x
  "ff" 'find-file
  "fs" 'save-some-buffers
  "fed" 'f/find-dotfile
  "fer" 'f/reload-dotfile
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
  "bn" 'next-buffer
  "bb" 'ivy-switch-buffer
  "qq" 'f/kill-emacs
  "ss" 'swiper
  "sa" 'counsel-ag)

;; MAGIT CONFIGURATION

(require 'evil-magit) ;; no idea why this has to be required explicitly

;; WHICH-KEY CONFIGURATION

(which-key-mode)
(which-key-setup-side-window-right)
(which-key-add-key-based-replacements
  "<SPC> f" "files"
  "<SPC> f e" "emacs"
  "<SPC> p" "projectile"
  "<SPC> h" "help"
  "<SPC> g" "git"
  "<SPC> w" "windows"
  "<SPC> b" "buffers"
  "<SPC> q" "quit"
  "<SPC> s" "search")

;; PROJECTILE CONFIGURATION

(projectile-mode +1)
(counsel-projectile-mode)

;; SLIME CONFIGURATION

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq slime-contribs '(slime-fancy))
