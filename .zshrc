. /usr/local/share/zsh/antigen.zsh

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

. ~/.config/fzf/shell/completion.zsh
. ~/.config/fzf/shell/key-bindings.zsh

export PATH=~/bin/goroot/bin:~/bin/stage3/bin:$PATH

