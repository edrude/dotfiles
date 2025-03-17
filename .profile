# In case shell is not set to zsh lets get there
if [ -t 0 ] && command -v zsh &>/dev/null; then
  export SHELL="$(command -v zsh)"
  exec "$SHELL" -l
fi
