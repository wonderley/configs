#! /bin/bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo Running $script_dir/${BASH_SOURCE}
if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
cp -v $script_dir/.bash_profile $HOME
if [ ! -e $HOME/.bash_profile_local ]; then
  cp -v $script_dir/.bash_profile_local.template $HOME/.bash_profile_local
fi
cp -v $script_dir/.tmux.conf $HOME
cp -v $script_dir/.vimrc $HOME
