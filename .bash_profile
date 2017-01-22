echo "Running ~/.bash_profile"
if [ -e ~/.bash_profile_local ]
  source ~/.bash_profile_local
fi
# Add scripts to path
export PATH=$PATH:/Users/i836957/scripts

# Do not use - "v" is used by tmux
# TODO: Adapt this to tmux usage
# Use "v" instead of vim to open files in new tab from background.
# http://stackoverflow.com/questions/5999837/how-to-open-another-file-in-background-vim-from-bash-command-line
# .vim_swap must exist.
#v() {
#    vim_id=`jobs|sed -n "/vim/s/\[\([0-9]\)\]+.*/\1/p"`
#    if [ -n "$vim_id" ]; then
#        echo "tabedit $@" > ~/.vim_swap/e.vim && fg $vim_id
#    else
#    	rm ~/.vim_swap/e.vim
#    	touch ~/.vim_swap/e.vim
#        vim $@
#    fi
#}

# Make tmux use bash
export SHELL=/bin/bash
# PS1
export PS1="\W > "

