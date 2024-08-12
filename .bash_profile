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
. "$HOME/.cargo/env"
