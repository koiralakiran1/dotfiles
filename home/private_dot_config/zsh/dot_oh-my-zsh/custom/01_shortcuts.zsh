# Go to additional file/directory paths
alias dotfiles="git -C $HOME/.local/share/chezmoi " # dotfiles status
alias dots="dotfiles"

# Directory / config files aliases
function () {
  local config_dir="$HOME/.config"
  alias -g @config.d="$config_dir"

  local alacritty_dir="$config_dir/alacritty"
  alias -g @alacritty.d="$alacritty_dir"
  alias -g @alacrc="$alacritty_dir/alacritty.toml"

  local chezmoi_repo="$HOME/.local/share/chezmoi"
  local chezmoi_source="$(chezmoi source-path)" # $chezmoi_repo/home
  alias -g @chezmoirepo.d="$chezmoi_repo"
  alias -g @chezmoi.d="$chezmoi_source"
  alias -g @dotfiles.d="$chezmoi_source"
  alias -g @chezmoiexternals.d="$chezmoi_source/.chezmoiexternals"

  alias -g @starshiprc="$config_dir/starship.toml"

  local omz_dir="$ZDOTDIR/.oh-my-zsh"
  local omz_custom="$ZDOTDIR/.oh-my-zsh/custom"
  alias -g @zsh.d="$ZDOTDIR"
  alias -g @zshrc="$ZDOTDIR/.zshrc"
  alias -g @omz.d="$omz_dir"
  alias -g @zshcustom.d="$omz_custom"
  alias -g @custom.d="@zshcustom.d"

  alias -g @aliases.d="$omz_custom/aliases"
  alias -g @aliases_personal="$omz_custom/aliases/personal.zsh"
  alias -g @aliases_work="$omz_custom/aliases/work.zsh"
  alias -g @shortcuts="$omz_custom/01_shortcuts.zsh"

  alias -g @scripts.d="$HOME/.local/share/scripts"
}

# Aliases to go to common files
function () {
  alias goconfig="cd @config.d"

  alias goalacritty="cd @alacritty.d"

  alias godot="chezmoi cd ~"
  alias gochezmoi="cd @chezmoirepo.d"
  alias gochezmoirepo="cd @chezmoirepo.d"
  alias gochezmoiexternals="cd @chezmoiexternals.d"

  alias gozsh="cd @zsh.d"
  alias gomz="cd @omz.d"
  alias gozshcustom="cd @zshcustom.d"
  alias gocustom="gozshcustom"

  alias goaliases="cd @aliases.d"
  alias goscripts="cd @scripts.d"
}

# Aliases to open common(config) files with $EDITOR
function () {
  local e="$EDITOR" 

  alias vi.alacrc="$e @alacrc"

  alias vi.starshiprc="$e @starshiprc"

  alias vi.zshrc="$e @zshrc" 

  alias vi.personalaliases="$e @aliases_personal"
  alias vi.workaliases="$e @aliases_work"

  alias vi.shortcuts="$e @shortcuts"
}
