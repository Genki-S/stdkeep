__STDKEEP_LOG_DIR=${__STDKEEP_LOG_DIR:-${HOME}/.stdkeep}

stdkeep()
{
  local index=1
  if [ $# -ne 0 ]; then
    index=$1
  fi
  cat `ls --color=never -ct ${__STDKEEP_LOG_DIR}/*/*/*/* | head -n $index | tail -1`
}
