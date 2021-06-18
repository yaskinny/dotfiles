# install vim plug
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
don't foget to comment Vundle part
Deps:
- xsel
- rg  -> `apt install ripgrep`
- fzf
    - git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
    - .bashrc
        - export FZF_DEFAULT_OPTS="--layout=reverse --border -m --height=40%"
        - [ -f ~/.fzf.bash ] && source ~/.fzf.bash
---
# tmux
Deps;
- xsel

