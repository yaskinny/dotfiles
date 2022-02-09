HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
cmdir () {
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
if command -v nvim &>/dev/null; then
  alias vim=nvim
fi
alias RM="rm"
alias rm="trash"
alias rmls="trash-list"
alias rmrm="trash-rm"
alias rmrmrm="trash-empty"
alias d="docker"
alias t="terraform"
alias a=ansible
alias ap=ansible-playbook
alias adc="ansible-doc"
alias k=kubectl
_completion_loader kubectl
complete -o default -o nospace -o bashdefault -F __start_kubectl k
alias g=git
_completion_loader git
complete -o bashdefault -o default -o nospace -F _git g
# git latest version
# complete -o bashdefault -o default -o nospace -F __git_wrap__git_main g
kcn() {
    if [[ ! -z ${1} ]]; then
        if kubectl get ns | grep ${1} -q ; then
            kubectl config set-context --current --namespace $1
        else
            printf >&2 "%s\n" "${1} does not exist"
        fi
    else
        printf >&2 "%s\n" "no namespace given"
    fi
}

pub(){
    curl api.ipify.org || opendns +short @resolver1.opendns.com myip.opendns.com ${@}; echo
}

cce(){
  command -v ccrypt &>/dev/null || printf >&2 "%s\n" "ccrypt is not installed."
  [[ ! -z "${1}" && -f "${1}" ]] && { ccrypt -b -e ${1} && mv "${1}.cpt" "${1}" ; } || printf >&2 "%s\n" "cce fileName"
}
ccd(){
  command -v ccrypt &>/dev/null || printf >&2 "%s\n" "ccrypt is not installed."
  [[ ! -z "${1}" && -f "${1}" ]] && ccrypt -d "${1}" || printf >&2 "%s\n" "ccd encryptedFileName"
}
ccv(){
  command -v ccrypt &>/dev/null || printf >&2 "%s\n" "ccrypt is not installed."
  [[ ! -z "${1}" && -f "${1}" ]] && ccrypt -c "${1}" || printf >&2 "%s\n" "ccv encryptedFileName"
}

export FZF_DEFAULT_OPTS="--layout=reverse --border -m --height=40%"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

makeRandom(){
  if [[ -z ${1} ]]; then
    local this="25"
  else
    this=${1}
  fi
  cat /dev/urandom | tr -dc 'A-Za-z0-9\-_' | fold -w ${this} | head -1
}

export PS1='${debian_chroot:+($debian_chroot)}\[\033[02;31m\]\u-[\A]\[\033[00m\]\[\033[01;33m\]\w \n$(a=$?;[[ $a -eq 0 ]] && echo "$a" || echo "\[\033[02;31m\]$a\[\033[00m\]")\[\033[01;33m\]\[\033[38;5;014m\]$(git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/(\1)/")\[\033[00m\]\[\033[01;33m\] ~> \[\033[00m\]'
