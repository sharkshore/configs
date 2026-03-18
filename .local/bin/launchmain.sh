#!/bin/sh


choice=$(echo "$programs" | dmenu_run -i -b -l 5 -p "run:"\
  -fn 'Terminess Nerd Font Mono-20' \
  -nb '#282828' \
  -nf '#ebdbb2' \
  -sb '#fabd2f' \
  -sf '#000000' \
  -p "Run:")

[ -n "$choice" ] && exec $choice
