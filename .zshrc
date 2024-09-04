# Load pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
  # eval "$(pyenv init --path)"
  # eval "$(pyenv init -)"
# fi

# zmodload zsh/zprof

export NVM_DIR="$HOME/.nvm"

# This lazy loads nvm
nvm() {
  unset -f nvm
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  nvm $@
}

# This loads nvm bash_completion
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# load specific node version - manual for now 
export PATH="$NVM_DIR/versions/node/v20.15.0/bin:$PATH"


# Lazy-load pyenv
pyenv() {
  eval "$(command pyenv init --path)"
  command pyenv "$@"
}

# Initialize starship
eval "$(starship init zsh)"

# activate syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# disable underline
(( ${+ZSH_HIGHLIGHT_STYLES})) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Activate autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# zprof

