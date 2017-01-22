#! /bin/bash
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo Running $script_dir/${BASH_SOURCE}
cp -v $HOME/.bash_profile $script_dir
cp -v $HOME/.tmux.conf $script_dir
cp -v $HOME/.vimrc $script_dir

