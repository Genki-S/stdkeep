__stdkeep_log_filename()
{
  local dir="${__STDKEEP_LOG_DIR}/`date +%Y`/`date +%m`/`date +%d`"
  local file="`date +%H%M%S`_`tmux display-message -p "#S-#I-#P"`.log"
  echo "${dir}/${file}"
}

__stdkeep_start_logging()
{
  local cmd=${3%% *}
  # don't keep stdkeep commands
  if [ $cmd = "stdkeep" ]; then
    return;
  fi

  local logfile=`__stdkeep_log_filename`
  mkdir -p ${logfile%/*}
  echo $1 > "${logfile}.cmd"
  echo $PWD > "${logfile}.pwd"
  tmux pipe-pane "cat > ${logfile}"
}

__stdkeep_stop_logging()
{
  tmux pipe-pane
}

add-zsh-hook preexec __stdkeep_start_logging
add-zsh-hook precmd __stdkeep_stop_logging
