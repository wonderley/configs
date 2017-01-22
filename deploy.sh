#! /bin/bash
set -e
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo Running $script_dir/${BASH_SOURCE}
echo Adding bash_profile_synced to ~/.bash_profile.
echo source $script_dir/bash_profile_synced >> ~/.bash_profile
if [ ! -e $script_dir/bash_profile_local ]; then
  echo Creating bash_profile_local.
  cp -v $script_dir/bash_profile_local.template $script_dir/bash_profile_local
fi
if [ ! -e $HOME/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi
echo Sourcing .bash_profile_synced.
source $script_dir/bash_profile_synced

