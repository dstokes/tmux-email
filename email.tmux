#!/usr/bin/env bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CWD/scripts/tmux.sh"

mail_script="#($CWD/scripts/email.sh)"
mail_tag="\#{email_unread}"

interpolate() {
  local interpolated="$1"
  local interpolated="${interpolated/$mail_tag/$mail_script}"
  echo "$interpolated"
}

main() {
  set_tmux_option "status-right"
  set_tmux_option "status-left"
}
main
