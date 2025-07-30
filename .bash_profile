export PATH="$HOME/bin:$PATH";
export PATH="/usr/local/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

for file in ~/.bash/.{path,prompt,config,exports,aliases,functions,locale}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source ~/.bash/.git-prompt.sh
source ~/.bash/.git-completion.sh
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
shopt -u histappend

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[ -f /Users/kenta.yamamoto/.dart-cli-completion/bash-config.bash ] && . /Users/kenta.yamamoto/.dart-cli-completion/bash-config.bash || true
## [/Completion]

. "$HOME/.local/bin/env"
