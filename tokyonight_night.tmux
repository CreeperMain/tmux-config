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
set-option -g status-position top

set -g status-style "fg=#7aa2f7,bg=#1a1b26"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#15161e,bg=#7aa2f7,bold] 󰖲 #S 󰙅 #(echo '#{pane_current_path}' | rev | cut -d'/' -f-2 | rev) #[fg=#7aa2f7,bg=#1a1b26,nobold,nounderscore,noitalics] #[fg=#9ece6a,bg=#1a1b26] #(whoami)#[fg=#e0af68,bg=#1a1b26]@#[fg=#bb9af7,bg=#1a1b26]#(uname -n) "
set -g status-right "#[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#7aa2f7,bg=#1a1b26] #{prefix_highlight} #[fg=#35A77C] #{battery_status_bg} #{battery_icon} #{battery_percentage} #{battery_remain}  #[fg=#b4f9f8,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#b4f9f8,nobold] %H:%M %d %b #[fg=#73daca,bg=#b4f9f8,nobold,nounderscore,noitalics]#[fg=#15161e,bg=#73daca] AD %Y ┃ #(expr %Y + 5509) AM "

set -g @batt_icon_charge_tier8 '󰁹'
set -g @batt_icon_charge_tier7 '󰂂'
set -g @batt_icon_charge_tier6 '󰂁'
set -g @batt_icon_charge_tier5 '󰂀'
set -g @batt_icon_charge_tier4 '󰁿'
set -g @batt_icon_charge_tier3 '󰁾'
set -g @batt_icon_charge_tier2 '󰁽'
set -g @batt_icon_charge_tier1 '󰁼'
set -g @batt_icon_status_charged '󰂄'
set -g @batt_icon_status_charging ''
set -g @batt_icon_status_discharging '👎'
set -g @batt_color_status_primary_charged '#9ece6a'
set -g @batt_color_status_primary_charging '#b8bb26'

setw -g window-status-activity-style "underscore,fg=#a9b1d6,bg=#1a1b26"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#a9b1d6,bg=#1a1b26"
setw -g window-status-format "#[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#414868,bg=#1a1b26] #I #W #[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1a1b26,bg=#24283b,nobold,nounderscore,noitalics]#[fg=#a9b1d6,bg=#24283b,nobold] #I #W #[fg=#24283b,bg=#1a1b26,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#e0af68]#[bg=#1a1b26]#[fg=#1a1b26]#[bg=#e0af68]"
set -g @prefix_highlight_output_suffix ""
