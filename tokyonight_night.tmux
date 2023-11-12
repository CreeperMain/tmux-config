#!/usr/bin/env bash

# TokyoNight colors for Tmux
# vars
set -g mode-style "fg=#7aa2f7,bg=#3b4261"

set -g message-style "fg=#7aa2f7,bg=#3b4261"
set -g message-command-style "fg=#7aa2f7,bg=#3b4261"

set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#7aa2f7"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#7aa2f7,bg=#1a1b26"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#15161e,bg=#7aa2f7,bold] 󰖲 #S 󰙅 #(echo '#{pane_current_path}' | rev | cut -d'/' -f-2 | rev) #[fg=#7aa2f7,bg=#1a1b26,nobold,nounderscore,noitalics] #[fg=#9ece6a,bg=#1a1b26] #(whoami)#[fg=#e0af68,bg=#1a1b26]@#[fg=#bb9af7,bg=#1a1b26]#(uname -n) "
set -g status-right "#[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#1a1b26] #{prefix_highlight} #[fg=#3b4261,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#3b4261] %d/%m/%Y ┃ %I:%M %p #[fg=#7aa2f7,bg=#3b4261,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#7aa2f7,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
	set -g status-right "#[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#1a1b26] #{prefix_highlight} #[fg=#b4f9f8,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#b4f9f8,nobold] %H:%M %d %b #[fg=#73daca,bg=#b4f9f8,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#73daca] AD %Y ┃ #(expr %Y + 5509) AM "
}

setw -g window-status-activity-style "underscore,fg=#a9b1d6,bg=#1a1b26"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9b1d6,bg=#1a1b26"
setw -g window-status-format "#[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#414868,bg=#1a1b26] #I #W #[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1a1b26,bg=#24283b,nobold,nounderscore,noitalics]#[fg=#a9b1d6,bg=#24283b,nobold] #I #W #[fg=#24283b,bg=#1a1b26,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#1a1b26]#[fg=#1a1b26]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix ""
