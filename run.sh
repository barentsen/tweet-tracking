#!/bin/bash
#
# This script will start all the trackers in the background 
# using a terminal multiplexer (tmux)
#
# "$tmux a -t twitter" to see the running output.


# Count the number of tmux "twitter" windows already open
RUNNING=`tmux ls 2> /dev/null | grep -c twitter`
if [ $RUNNING -gt 0 ]; then
    echo "ERROR: A tmux twitter session is already running! Not starting."

else

    tmux new-session -d -s twitter -n meteors
    tmux send-keys -t twitter:meteors "cd meteors; ./track.sh" Enter
    
    tmux new-window -t twitter -n exoplanets
    tmux send-keys -t twitter:exoplanets "cd exoplanets; ./track.sh" Enter
    
    tmux new-window -t twitter -n spiders
    tmux send-keys -t twitter:spiders "cd spiders; ./track.sh" Enter
fi

