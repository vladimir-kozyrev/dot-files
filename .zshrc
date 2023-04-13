export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git kubectl)
source $ZSH/oh-my-zsh.sh

my-backward-delete-word() {
    local WORDCHARS='*?_-@.[]~=/&:;!#$%^(){}<>|'
    zle backward-kill-word
}
zle -N my-backward-delete-word
bindkey '^W' my-backward-delete-word

coverage() {
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(starship init zsh)"

export EDITOR=nvim
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
alias k8s_enable="gsed -i '/kubernetes/{n;s/.*/disabled = false/}' ~/.config/starship.toml"
alias k8s_disable="gsed -i '/kubernetes/{n;s/.*/disabled = true/}' ~/.config/starship.toml"
alias delete_merged_branches="git br --merged | grep -v -E '\*|master|main' | xargs git br -d"

# GOLANG
export GOPATH="$HOME/gopath"
export PATH="$GOPATH/bin:$PATH"

function gpg_cache () {
        gpg-connect-agent /bye &> /dev/null
        eval $(op signin --account my.1password.com)
        op item get "GPG passphrase" --fields label=password | /opt/homebrew/Cellar/gnupg/2.4.0/libexec/gpg-preset-passphrase --preset 7E1F76F953A1F59A98CF6B88D0A88FCA938040A8
}

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

