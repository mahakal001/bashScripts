#!/usr/bin/env bash
#if some seesion is already running ,just attach to it.
##########################################################

while getopts s:c: opt
do
  case "$opt" in
         s) 
	    tmux has-session -t $OPTARG
	    if [ $? -eq 0 ]
	    then
		   tmux attach -t $OPTARG
	    else
		   tmux new-session -d -s $OPTARG
	    fi
	    sleep 1
            ;;

	 c) 
	    if [ $OPTARG = "2h" ]
             then
                  tmux split-window -h
             elif [ $OPTARG = "2v" ]
             then
	          tmux split-window -v
	     elif [ $OPTARG = "31" ]
             then
		  tmux split-window -v
		  tmux split-window -h
             elif [ $OPTARG = "32" ]
	     then
	       	  tmux split-window -h
		  tmux split-window -v
	     elif [ $OPTARG = "33" ]
	     then
	          tmux split-window -v
       	          tmux select-pane -t 0
	          tmux split-window -h
             elif [ $OPTARG = "34" ]
	     then
	          tmux split-window -h
	          tmux select-pane -t 0
	          tmux split-window -v
	     elif [ $OPTARG = "4" ]
	     then
	      	  tmux split-window -v
		  tmux split-window -h
		  tmux select-pane -t 0
		  tmux split-window -h
	     fi      
	     ;;
	   *)
		   exit 1
     esac
done
tmux -2 attach-session -d

