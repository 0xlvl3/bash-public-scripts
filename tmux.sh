#!/bin/bash

#tmux commands 

echo ""

read -p "Where would you like to go? 
1 - tmux new -s session
2 - tmux new -s <insert_name>
3 - tmux kill-session (must be in session)
4 - tmux list-sessions 
5 - tmux attach <insert_session>
6 - tmux detach
input: " -a USER_OPTION

case $USER_OPTION in 
	1)
		(tmux new -s session)
		;;
	2)
		read -p "Name session: " SESSION
		(tmux new -s ${SESSION})
		;;
	3)
		(tmux kill-session)
		;;
	4)
		(tmux ls)
		;;
	5)
		(tmux attach ${1})
		;;
	6)
		(tmux detach)
		;;
	esac

