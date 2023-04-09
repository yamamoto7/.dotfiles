export PATH="$HOME/bin:$PATH";

for file in ~/.bash/.{path,prompt,config,exports,aliases,functions,locale}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
shopt -u histappend
