#!/bin/bash
if
	command -v tmux &> /dev/null && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM " =~ tmux ]] && [ -z "$TMUX" ];
then
	exec tmux new -s test -n Settings \; \
		send-keys 'pulsemixer' C-m \; \
		split-window -h -p 40 \; \
		send-keys 'figlet -f larry3d -c settings | lolcat -S 26' C-m \; \
		split-window -v -p 80 \; \
		send-keys 'neofetch | lolcat -S 36' C-m \; \
		split-window -v -p 55 \; \
		send-keys 'gotop' C-m \; \
		select-pane -t 0 \; \
		split-window -v -p 80 \; \
		send-keys 'mc' C-m \; \
	new-window -n Main \; \
		send-keys 'crawl' C-m \; \
		split-window -h -p 40 \; \
		send-keys 'figlet -f larry3d -c systemX | lolcat -S 36' C-m \; \
		split-window -v -p 80 \; \
		send-keys 'pulsemixer' C-m \; \
		split-window -v -p 65 \; \
		send-keys 'cava' C-m \; \
		split-window -v -p 75 \; \
		send-keys 'cmus' C-m \; \
		select-pane -t 0 \; \
		split-window -v \; \
		select-pane -t 0 \; \
	new-window -n Video \; \
		send-keys 'pulsemixer' C-m \; \
		split-window -v -p 80 \; \
		select-pane -t 0 \; \
		split-window -h -p 40 \; \
		send-keys 'figlet -f larry3d -c video | lolcat -S 32' C-m \; \
		select-pane -t 0 \; \
	select-window -t 1 \;
fi
