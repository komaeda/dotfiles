function setpath
  test -e $argv[1]; and set PATH $argv[1] $PATH 
end

setpath ~/.rbenv/shims
setpath ~/.rbenv/bin
setpath ~/.cargo/bin
setpath /usr/local/anaconda3/bin
setpath ~/n/bin
setpath ~/.local/bin

set PROJECTS ~/code
set EDITOR "nvim"
set USER "lu"
set pure_symbol_prompt ">"

alias editconfig "vim ~/code/oe/dotfiles/fish/.config/fish/config.fish; and source ~/.config/fish/config.fish"
alias g "git"
alias s "g status --short"
alias t "tree . -L 3"
alias l "git log --color --graph --abbrev-commit --oneline"
alias q "g add --all; and g commit; and g push"
alias be "bundle exec"
alias doc "docker-compose"
alias rp "rustup"
alias ca "cargo"

if command --search hub > /dev/null do
  alias git "hub"
end

if command --search nvim > /dev/null do
  alias vim "nvim"
end
