#!/bin/bash

tmux new-session -s "DefaultSession" -d
tmux split-window -h
tmux resize-pane -t "DefaultSession:0.0" -x 2%
tmux -2 attach-session -d

