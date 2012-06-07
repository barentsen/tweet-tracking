#!/bin/bash

tmux new-session -d -s twitter -n exoplanets
tmux send-keys -t twitter:exoplanets "cd exoplanets; ./track.sh" Enter

tmux new-window -t twitter -n spiders
tmux send-keys -t twitter:spiders "cd spiders; ./track.sh" Enter

#tmux new-window -t twitter -n meteors