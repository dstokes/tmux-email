#!/usr/bin/env bash

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CWD/tmux.sh"

mail() {
  UNREAD_MAIL=$(osascript <<EOF
if application "Mail" is running then
  tell application "Mail" to get unread count of inbox
end if
EOF
)
  if [[ -n "$UNREAD_MAIL" && "$UNREAD_MAIL" -gt 0 ]]; then
    ICON=$(get_tmux_option '@email_icon' '✉')
    if [[ -n "$ICON" ]]; then
      UNREAD_MAIL="$UNREAD_MAIL $ICON"
    fi
    echo "$(get_tmux_option '@email_left_pad' '')$UNREAD_MAIL$(get_tmux_option '@email_right_pad' '')"
  fi
}

main() {
  mail
}

main
