HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
cmdir () 
{ 
    if [ -d $1 ]; then
        cd $1;
    else
        mkdir -p $1 && cd $1;
    fi
}





if command -v kubectl &>/dev/null; then
  source <(kubectl completion bash)
fi
if command -v flux &>/dev/null; then
source <(kubectl completion bash)
  source <(flux completion bash)
fi
if command -v kubeadm &>/dev/null; then
source <(flux completion bash)
  source <(kubeadm completion bash)
fi
if command -v helm &>/dev/null; then
  source <(helm completion bash)
fi
if command -v vim.gtk3 &>/dev/null; then
  alias vim=/usr/bin/vim.gtk3
fi

alias k=kubectl
_completion_loader kubectl
complete -o default -o nospace -o bashdefault -F __start_kubectl k

alias g=git
_completion_loader git
complete -o bashdefault -o default -o nospace -F _git g


alias rm="rm -i"
alias a=ansible
alias ap=ansible-playbook
alias adc="ansible-doc"


export FZF_DEFAULT_OPTS="--layout=reverse --border -m --height=40%"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PS1='${debian_chroot:+($debian_chroot)}\[\033[02;31m\]\u@\[\033[00m\]\[\033[01;33m\]\w \n~> \[\033[00m\]'
