function setpath
  test -z $argv[1]; or return 1
  if test -d $argv[1]
    set PATH $argv[1] $PATH
  end
end

status --is-interactive; and source (rbenv init -|psub)
setpath ~/.cargo/bin
setpath /usr/local/anaconda3/bin
setpath ~/n/bin
setpath ~/.local/bin

set PROJECTS ~/code
set EDITOR vim
set USER "liv"

alias editconfig "vim ~/code/oe/dotfiles/fish/.config/fish/config.fish; and source ~/.config/fish/config.fish"
alias g "git"
alias s "g status --short"
alias t "tree . -L 3"
alias l "git log --color --graph --abbrev-commit --oneline"
alias q "g add --all; and g commit; and g push"
alias be "bundle exec"
alias doc "docker-compose"

if command --search hub > /dev/null do
  alias git "hub"
end

if command --search nvim > /dev/null do
  alias vim "nvim"
end
