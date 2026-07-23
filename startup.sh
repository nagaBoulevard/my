# configuration file


# dotfiles configuration
ln -s $HOME/.my/dotfiles/bashrc     $HOME/.bashrc
ln -s $HOME/.my/dotfiles/vimrc      $HOME/.vimrc
ln -s $HOME/.my/dotfiles/tmux.conf  $HOME/.tmux.conf
ln -s $HOME/.my/dotfiles/vim.d/     $HOME/.vim
mkdir -p $HOME/.config/aerospace
ln -s $HOME/.my/dotfiles/aerospace.toml $HOME/.config/aerospace/aerospace.toml

