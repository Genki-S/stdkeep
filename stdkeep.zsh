if [ -z "$TMUX" ]; then
  echo "Please source this inside a tmux session."
else
  __STDKEEP_INSTALL_DIR=`dirname $0`

  source "${__STDKEEP_INSTALL_DIR}/setup.zsh"
  source "${__STDKEEP_INSTALL_DIR}/api.zsh"
fi
