#!/usr/bin/env bash

set -g mode-style "fg=#7aa2f7,bg=#3b4261"

#message
set -g message-style "fg=#7aa2f7,bg=#3b4261"
set -g message-command-style "fg=#7aa2f7,bg=#3b4261"

#pane configuration
set -g pane-border-style "fg=#3b4261"
set -g pane-active-border-style "fg=#7aa2f7"

#status configs
set -g status "on"
set -g status-justify "left"
set-option -g status-position top
set -g status-style "fg=#7aa2f7,bg=#1a1b26"
set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left "#[fg=#1a1b26 bg=#ff9e64] 󰖲 #S #[fg=#ff9e64,bg=#b4f9f8,nobold,nounderscore,noitalics] #[fg=#1a1b26 bg=#b4f9f8]󰙅 #(echo '#{pane_current_path}' | rev | cut -d'/' -f-2 | rev) #[fg=#b4f9f8 bg=#1a1b26]"
set -g status-right "#{battery_color_fg}#[bg=#1a1b26] #{battery_icon} #{battery_percentage} 󱧥 #(acpi -b | grep -m 1 -Eo "[0-9]+:[0-9]+") #[fg=#a9b1d6]#(date +'󰔠 %H:%M %d/%m/%Y') "

setw -g window-status-format "#[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]#[fg=#414868,bg=#1a1b26] #I #W #[fg=#1a1b26,bg=#1a1b26,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1a1b26,bg=#24283b,nobold,nounderscore,noitalics]#[fg=#a9b1d6,bg=#24283b,nobold] #I #W #[fg=#24283b,bg=#1a1b26,nobold,nounderscore,noitalics]"

#battery config
set -g @batt_icon_charge_tier8 '󰁹'
set -g @batt_color_charge_primary_tier8 '#35A77C'
set -g @batt_icon_charge_tier7 '󰂂'
set -g @batt_color_charge_primary_tier7 '#8ec07c'
set -g @batt_icon_charge_tier6 '󰂁'
set -g @batt_color_charge_primary_tier6 '#9ece6a'
set -g @batt_icon_charge_tier5 '󰂀'
set -g @batt_color_charge_primary_tier5 '#b8bb26'
set -g @batt_icon_charge_tier4 '󰁿'
set -g @batt_color_charge_primary_tier4 '#d79921'
set -g @batt_icon_charge_tier3 '󰁾'
set -g @batt_color_charge_primary_tier3 '#d65d0e'
set -g @batt_icon_charge_tier2 '󰁽'
set -g @batt_color_charge_primary_tier2 '#af3a03'
set -g @batt_icon_charge_tier1 '󰁼'
set -g @batt_color_charge_primary_tier1 '#9d0006'
set -g @batt_icon_status_charged '󰂄'
set -g @batt_icon_status_charging ''
set -g @batt_color_status_primary_charged '#35A77C'
set -g @batt_color_status_primary_charging '#b8bb26'
