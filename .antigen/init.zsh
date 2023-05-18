#-- START ZCACHE GENERATED FILE
#-- GENERATED: Thu May 18 17:47:46 CEST 2023
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/usr/local/share/zsh/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib /usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-syntax-highlighting /usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-autosuggestions /usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-completions /usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/genpass) path+=(/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib /usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-syntax-highlighting /usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-autosuggestions /usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-completions /usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/genpass)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/dmitry/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/themes/gentoo.zsh-theme.antigen-compat';
source '/usr/home/dmitry/.dotfiles/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/genpass/genpass.plugin.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/gentoo.zsh-theme theme true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/genpass plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/home/dmitry/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/dmitry/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/dmitry/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/dmitry/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/dmitry/.antigen/bundles/zsh-users/zsh-completions//' '/home/dmitry/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/themes/gentoo.zsh-theme' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/themes/gentoo.zsh-theme' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/genpass' '/home/dmitry/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/genpass/genpass.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
