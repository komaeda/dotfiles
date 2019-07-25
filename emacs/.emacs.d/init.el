(package-initialize)

;; load straight, the package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; load all dependencies (this might take a while on first start)
(straight-use-package 'ivy)
(straight-use-package 'counsel)
(straight-use-package 'evil)
(straight-use-package 'which-key)
(straight-use-package 'projectile)
(straight-use-package 'telephone-line)
(straight-use-package 'afternoon-theme)
(straight-use-package 'alect-themes)
(straight-use-package 'autopair)
(straight-use-package 'zoom)
(straight-use-package 'company)
(straight-use-package 'ag)
(straight-use-package 'racer)
(straight-use-package 'magit)
(straight-use-package 'cask-mode)
(straight-use-package 'rust-mode)
(straight-use-package 'markdown-mode)
(straight-use-package 'slime)
(straight-use-package 'evil-leader)
(straight-use-package 'evil-magit)
(straight-use-package 'counsel-projectile)

(setq standard-indent 2
      scroll-step 1
      make-backup-files nil)
(setq-default indent-tabs-mode t)
(setq-default tab-width 2)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq mac-command-modifier 'control)

(global-hl-line-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(auto-compression-mode t)
(scroll-bar-mode -1)

(if window-system
    (load-theme 'adwaita t))

(set-terminal-coding-system 'iso-latin-1)

(setq initial-frame-alist
      '((font . "Input Mono 16")))

(if (eq system-type 'darwin)
    (setq initial-frame-alist
          '((font . "Input Mono 22"))))

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

(require 'evil-magit) 

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

;; RUST CONFIGURATION

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(if (eq system-type 'darwin)
    (setq racer-rust-src-path "")
  (setq racer-rust-src-path "/home/lu/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))

;; ELISP CONFIGURATION

(add-hook 'emacs-lisp-mode-hook #'company-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "c335adbb7d7cb79bc34de77a16e12d28e6b927115b992bccc109fb752a365c72" default)))
 '(delete-selection-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
