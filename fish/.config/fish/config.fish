# Convenience function for only setting PATH if the specified directory exists
function setpath
  test -e $argv[1]; and set PATH $argv[1] $PATH 
end

# PATH adjustment
setpath ~/.rbenv/shims
setpath ~/.rbenv/bin
setpath ~/.cargo/bin
setpath /usr/local/anaconda3/bin
setpath ~/.local/bin
setpath ~/.bin
setpath ~/.cask/bin
setpath ~/.npm-packages/bin
setpath ~/n/bin
setpath /snap/bin
setpath ~/.emacs.d/bin

# Source private stuff
source ~/.config/fish/private.fish

# Environment variables
set PROJECTS ~/code
set EDITOR "nvim"
set USER "lu"
set SHELL /usr/bin/fish
set -x N_PREFIX ~/n
set pure_symbol_prompt "\$"
set GTK_IM_MODULE ibus
set XMODIFIERS @im=ibus
set QT_IM_MODULE ibus
set GLFW_IM_MODULE ibus
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x LANGUAGE en_US.UTF-8
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

# General Aliases
alias editconfig "vim ~/code/komaeda/dotfiles/fish/.config/fish/config.fish; and source ~/.config/fish/config.fish"
alias t "tree . -L 3"
alias j "z"
alias jo "zo"
alias be "bundle exec"
alias doc "docker-compose"
alias rp "rustup"
alias ca "cargo"
alias mkt "cd (mktemp -d)"
# Git Aliases
alias g "git"
alias gs "g status --short"
alias gl "g log --color --graph --abbrev-commit --oneline"
alias gqp "g add --all; and g commit; and g push"
alias gqc "g add --all; and g commit"
alias gpl "g pull"
alias gps "g push"
alias gc "g commit"
alias gaa "g add --all"
alias gco "g checkout"
alias gse "g send-email"
alias y "sudo zypper"

# Aliases that overwrite other, existing commands
if command --search hub > /dev/null do
  alias git "hub"
end

if command --search nvim > /dev/null do
  alias vim "nvim"
end

