[ -n "$PS1" ] && source ~/.bash_profile;
export PATH="$PATH:/Users/kenta.yamamoto/Library/Python/3.9/bin"

. "$HOME/.local/bin/env"

export PNPM_HOME="/Users/kenta.yamamoto/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
