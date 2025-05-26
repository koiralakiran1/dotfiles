# Edit chezmoi managed files with chezmoi edit if it's clean; else $EDITOR
function edit() {
    if [ $# -eq 0 ]; then
        ${EDITOR}
        return
    fi

    # Added "--hardlink=false" option to get neovim undo available.
    chezmoi managed $1 > /dev/null 2>&1\
        && chezmoi edit --apply --hardlink=false $1\
        || ${EDITOR} $@
}

# Additional ls
alias ls="lsd"
alias lla="ls -la"

# bat/cat
alias cat="bat --color=always --style=numbers"
alias man="batman"

# Utilities
alias paths="echo $PATH | tr : '\n'"

# Programs
alias bw='NODE_OPTIONS="--no-deprecation" bw'
alias python=python3
alias py=python
alias wpy="which python"
alias pyv="python --version"
alias vim=edit
alias vi=edit
alias v=edit
alias vpn=expressvpn
alias czm=chezmoi
alias chz=chezmoi

# Additional git
alias gforh="gfo --prune && groh"

# Node
alias node10="nvm use 10 && nvm alias default 10"
alias node12="nvm use 12 && nvm alias default 12"
alias node16="nvm use 16 && nvm alias default 16"
alias node18="nvm use 18 && nvm alias default 18"
# alias npm="nocorrect npm"

# Java
alias java8="sudo archlinux-java set java-8-openjdk"
alias java17="sudo archlinux-java set java-17-openjdk"

# Scripts
alias defaultzsh="chsh -s $(which zsh)"
alias fixkeyperm="chmod 400"
alias emulator="$ANDROID_HOME/emulator/emulator" # Android studio emulator
