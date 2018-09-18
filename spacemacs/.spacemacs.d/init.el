(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs-base
   dotspacemacs-enable-lazy-installation 'nil
   dotspacemacs-configuration-layer-path '()
   dotspacemacs-configuration-layers
   '(
     clojure ;; adds clojure language functionality
     emacs-lisp ;; adds emacs lisp integration & support
     erlang ;; adds erlang language functionality
     git ;; adds magit and git integration
     html ;; adds web-mode
     ibuffer ;; adds ibuffer configuration
     ivy ;; replaces helm with ivy
     javascript ;; adds js2-mode
     (markdown :variables markdown-live-preview-engine 'vmd) ;; adds markdown support with vmd as the default viewer
     org ;; adds org mode support
     ruby ;; adds ruby language support
     rust ;; adds rust language integration
     yaml ;; adds yaml language support
     )
   dotspacemacs-frozen-packages '()
   dotspacemacs-excluded-packages '()
   dotspacemacs-additional-packages
   '(
     solarized-theme
     zenburn-theme
     brainfuck-mode
     )
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update nil
   dotspacemacs-elpa-subdirectory nil
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 000
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   dotspacemacs-startup-buffer-responsive t
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(zenburn)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Fira Code Medium"
                               :size 15
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-remap-Y-to-y$ nil
   dotspacemacs-retain-visual-state-on-shift t
   dotspacemacs-visual-line-move-text nil
   dotspacemacs-ex-substitute-global nil
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts nil
   dotspacemacs-large-file-size 1
   dotspacemacs-auto-save-file-location 'original
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-enable-paste-transient-state nil
   dotspacemacs-which-key-delay 0.4
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar nil
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-show-transient-state-title t
   dotspacemacs-show-transient-state-color-guide t
   dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers t
   dotspacemacs-folding-method 'evil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-smart-closing-parenthesis t
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  (package-refresh-contents))

(defun dotspacemacs/user-config ()
  (load "~/.spacemacs.d/general.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (yaml-mode sesman erlang solarized-theme clj-refactor inflections edn paredit peg cider-eval-sexp-fu eval-sexp-fu highlight cider spinner queue clojure-mode ibuffer-projectile zenburn-theme rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby brainfuck-mode langdoc chess org-category-capture org-present org-mime mu4e-maildirs-extension mu4e-alert ht clues-theme ghub let-alist toml-mode toc-org racer f org-bullets intero hlint-refactor hindent haskell-snippets flycheck-rust seq flycheck-haskell company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode cargo rust-mode vmd-mode flycheck-pos-tip pos-tip flycheck fuzzy company-web web-completion-data company-tern dash-functional company-statistics company auto-yasnippet ac-ispell auto-complete web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode haml-mode emmet-mode mmm-mode markdown-toc markdown-mode gh-md orgit smeargle magit-gitflow gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor org-projectile org-plus-contrib org-pomodoro alert log4e gntp org-download htmlize gnuplot tern apropospriate-theme web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors s js2-mode js-doc coffee-mode utop tuareg caml ocp-indent merlin which-key wgrep use-package smex pcre2el macrostep ivy-hydra hydra help-fns+ helm-make helm helm-core popup flx exec-path-from-shell evil-visualstar evil-escape evil goto-chg undo-tree elisp-slime-nav diminish counsel-projectile projectile pkg-info epl counsel swiper ivy bind-map bind-key auto-compile packed dash async ace-window avy)))
 '(safe-local-variable-values
   (quote
    ((cider-cljs-lein-repl . "(do (user/go) (user/cljs-repl))")
     (cider-refresh-after-fn . "reloaded.repl/resume")
     (cider-refresh-before-fn . "reloaded.repl/suspend"))))
 '(tab-stop-list nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#3F3F3F")))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#0a0814" "#f2241f" "#67b11d" "#b1951d" "#4f97d7" "#a31db1" "#28def0" "#b2b2b2"])
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (sayid ruby-refactor ruby-hash-syntax overseer org-brain nameless magit-svn json-navigator hierarchy ivy-xref impatient-mode gitignore-templates evil-org counsel-css clojure-cheatsheet dotenv-mode sesman erlang solarized-theme clj-refactor inflections edn paredit peg cider-eval-sexp-fu eval-sexp-fu highlight cider spinner queue clojure-mode ibuffer-projectile zenburn-theme rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby brainfuck-mode langdoc chess org-category-capture org-present org-mime mu4e-maildirs-extension mu4e-alert ht clues-theme ghub let-alist toml-mode toc-org racer f org-bullets intero hlint-refactor hindent haskell-snippets flycheck-rust seq flycheck-haskell company-ghci company-ghc ghc haskell-mode company-cabal cmm-mode cargo rust-mode vmd-mode flycheck-pos-tip pos-tip flycheck fuzzy company-web web-completion-data company-tern dash-functional company-statistics company auto-yasnippet ac-ispell auto-complete web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode haml-mode emmet-mode mmm-mode markdown-toc markdown-mode gh-md orgit smeargle magit-gitflow gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link evil-magit magit magit-popup git-commit with-editor org-projectile org-plus-contrib org-pomodoro alert log4e gntp org-download htmlize gnuplot tern apropospriate-theme web-beautify livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors s js2-mode js-doc coffee-mode utop tuareg caml ocp-indent merlin which-key wgrep use-package smex pcre2el macrostep ivy-hydra hydra help-fns+ helm-make helm helm-core popup flx exec-path-from-shell evil-visualstar evil-escape evil goto-chg undo-tree elisp-slime-nav diminish counsel-projectile projectile pkg-info epl counsel swiper ivy bind-map bind-key auto-compile packed dash async ace-window avy)))
 '(safe-local-variable-values
   (quote
    ((cider-cljs-lein-repl . "(do (user/go) (user/cljs-repl))")
     (cider-refresh-after-fn . "reloaded.repl/resume")
     (cider-refresh-before-fn . "reloaded.repl/suspend"))))
 '(tab-stop-list nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#3F3F3F")))))
)
