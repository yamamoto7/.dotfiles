# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.bash/.{path,prompt,config,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/k7287/google-cloud-sdk/path.bash.inc' ]; then . '/Users/k7287/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/k7287/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/k7287/google-cloud-sdk/completion.bash.inc'; fi

shopt -u histappend
