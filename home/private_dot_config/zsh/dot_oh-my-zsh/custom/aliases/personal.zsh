# Additional ls
alias lla="ls -la"

# Programs
alias bw='NODE_OPTIONS="--no-deprecation" bw'
alias python=python3
alias py=python
alias wpy="which python"
alias vim=nvim
alias vi=$EDITOR
alias v=$EDITOR
alias vpn=expressvpn
alias czm=chezmoi
alias chz=chezmoi

# Additional git
alias gforh="gfo --prune && groh"

# Node
alias node10="nvm use 10 && nvm alias default 10"
alias node12="nvm use 12 && nvm alias default 12"
alias node16="nvm use 16 && nvm alias default 16"
alias npm="nocorrect npm"

# Java
alias java8="sudo archlinux-java set java-8-openjdk"
alias java17="sudo archlinux-java set java-17-openjdk"

# Scripts
alias defaultzsh="chsh -s $(which zsh)"
alias fixkeyperm="chmod 400"
alias emulator="$ANDROID_HOME/emulator/emulator" # Android studio emulator
