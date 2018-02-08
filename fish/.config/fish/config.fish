set PATH ~/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)
set PATH ~/.cargo/bin $PATH
set PATH /usr/local/anaconda3/bin $PATH
set PATH ~/n/bin $PATH

alias editconfig "vim ~/dotfiles/fish/.config/fish/config.fish; and source ~/.config/fish/config.fish"
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
