Tmux Email Plugin
===================

Display Mail.app unread email in your status line.

![tmux-weather](/screenshots/tmux-email.png)

Install
=======

Make sure you have [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) installed.

Then add the plugin to `~/.tmux.conf`:

```
set -g @plugin 'dstokes/tmux-email'
```

Load the plugin with `prefix + I`.


Usage
=====

```
set -g status-right "#{email_unread}"
set -g @email_left_pad ' '
set -g @email_right_pad ' |'
```

