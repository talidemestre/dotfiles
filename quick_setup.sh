echo "source ~/.dotfiles/.zshrc" >~/.zshrc
dconf load /org/gnome/terminal/legacy/profiles:/ <gnome-terminal.dconf

cp -r ~/.local/share/nvim ~/.dotfiles/local/share
cp -r ~/.local/state/nvim ~/.dotfiles/local/state
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
ln -s ~/.dotfiles/.local/share/nvim ~/.local/share/nvim
ln -s ~/.dotfiles/local/state/nvim ~/.local/state/nvim
