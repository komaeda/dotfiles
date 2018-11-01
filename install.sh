stow -t ~ -S bin/ emacs/ feh/ fish/ git/ i3/ kitty/ nvim/ polybar/ redshift/
splatmoji/ xorg/

rm -rf /etc/nixos/*
stow -t /etc/nixos -S nixos/
