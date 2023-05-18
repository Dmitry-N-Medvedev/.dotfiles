source /usr/local/share/zsh/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen theme gentoo
antigen bundle genpass
antigen apply


# pnpm
export PNPM_HOME="/home/dmitry/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

source ~/.cargo/env
source ~/.config/fzf/shell/completion.zsh
source ~/.config/fzf/shell/key-bindings.zsh

