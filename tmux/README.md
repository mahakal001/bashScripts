#WARNING : This README.md file gives different look on github.Please use vim to read this.The ascii art 
           is also disturbed in the online view.So use Vim or the raw file 
# Subject : A Simple Tmux script 
# Coder   : Mohit Pilkhan
# Successfully tested on : Ubuntu 14.04 x-86-64 bit

# Tmux ? :
      while working on terminal we need to have visualisation of more than one window
      simulataneously.Tmux provides this functionality.Tmux is highly configurable too.
      There are other options like GNU SCREEN.
# Benefits of this script:
      i wrote this script for my personal usage.Generally you have to start tmux and then giving different
      commands for your different purposes.This is a very simple script and take session-name and a special 
      code for the number and orientation of panes you want.
# USAGE:
        The prototype of this script is

     # $ tmux.sh [-s session_name] [-c code]

      And a typical example is:

     # $ tmux.sh -s new -c 2h

      This would open a session named "new" with screen horizontally splitted into 2 panes.Read on 
      for more imformation.

# OPTIONS:
       -s :  COMPULSORY
            the -s option take session-name you want to give to your new session.If such a session
            already in action,tmux will issue error "duplicate Session" and will exit.If that session
	    exist but currently deattached then tmux will attach to it and reopen it.Don't give the 
	    -c option this time since tmux knows where you left it and if you will pass this option 
	    then everything will go undirupted but when you will exit the session there will be some error
	    messages at your feel
        -c : NOT-COMPULSORY
	     If not given...open the sesseion with one pane

	    CODE    |   visualisation
                            ___
	    2h             |___|
	                   |___|
                            _ _
            2v             | | |
                           |_|_|
                            ___
            31             |_ _|
                           |_|_|
			    _ _
            32             | |_|
	                   |_|_|
			    _ _
	    33             |_|_|
	                   |___|
                            _ _
	    34             |_| |
	                   |_|_|
                            _ _
	    4              |_|_|
	                   |_|_|

            Isn't the above ascii art simple and sexy ? I really enjoyed building them.
# Future: 
        Its been a while with tmux.As my experince will grow i will enhance
	the efficiency,securtiy,features of this script.
# Built With
          Vim80 editor
# Versioning:
           We use Git as version control system
# Authors:
         Mohit Pilkhan
#Acknowledgments:
                * To OPEN source community,Books and their Authors.
                * manual page of tmux
	

