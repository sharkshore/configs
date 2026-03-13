#!/usr/bin/env bash

# Kill any running Polybar
polybar-msg cmd quit 2>/dev/null
killall -q polybar 2>/dev/null

# Launch the main bar
polybar main 2>&1 | tee -a /tmp/polybar_main.log & disown
