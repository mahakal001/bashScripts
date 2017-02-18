# auto-assembler
 This bash script automatically Assemble ,Link ,Run the given assembly file and report error,
 if encounter at any of the three steps.For more detail read README.md

:) Writting this file needs as much planning as coding because target is beginners (:

***********************************************************************************
@ Coder : mahakal001

@ Date  : Nov,2016

@ Why i created  this: I was just tired of assembling ,linking,running again and again
                        there were some solutions like
			
			1) using "up arrow" key to search the same command in history but
			  this work is also time expensive as you have no idea when you 
			  repeated the needed command.Use of 
			  $!history_number
			  also takes time ,so ignored..
			  
			2) next thing was to use a MAKEFILE,but then you have to create a
			   makefile for every new file  you want to assemble.However 
			   makefile makes a great deal and no one can beat them when you 
			   have a program that needs header files etc. in it

			3) make a script:
			 since most begiiner level assembly program are just one file
			 so , in your terminal type

			  $ alr <file>

			 and it will be equ to :

			  $ yasm -f elf64 -g dwarf2 -l file.lst file.asm
			  $ ld -o file file.o
			  $ ./file


	    @  every time you update your file ,you need not to do these
			     task repeatedly and wasting your time.Rather
                          just type $ alr <file>
            @  if any error occur,this script will terminate and will report
		      the error encounterd
@ Configuration:
     @ For advance:
        If you are well familiar with the linux , then you can  make changes to
		      script itself like changing the path where you keep your scripts for 
		      execution ..
        
    @ For beginners :
    
       1)  Make a directory "bashsc" (short for bash script ) in your home directory 
       
	 2)  Now , see the path variable
	        $ echo $PATH
	      
	      Examine if your bashc directory path is in this or not..since there are very much 
	      chances that it will not be there , so add the path of this directory in
	      it : google for this "how to add directory in PATH variable"
	      My solution to this is :
	      Open your .bashrc file ,which normally availble in home dir.
	      then append follwing piece of code there:
              
	      if [ -d "$HOME/bashsc" ]
	      then
	         PATH="$HOME/bashsc:$PATH"
              fi
	      
	      check the PATH variable again ...and if (all good),follow next step

	   3) Now place alr script in this bashsc dir and make it executable
	       
	      $ chmod u+x alr

	    further make a symbolic link ( why ? read at end)
	     $ ln -s alr anl

	   4) Now same as you can use "cat" anywhere in system similarly you can use
	      this script anywhere.

	      $ alr <path_to_your_assembly_code>

@ Symbolic links lets us use same piece of code for different purpose ,
  so when you give command.
  
   $ anl < file >

     1) it will just assemble and list the file listing (no linking and executing take place)
        examining listing file is important for debugging purpose
	
      2) The code whicn executes when this is called,is the last if-then-fi statement in the alr bashscript 
        Thus we need not to write multiple scripts for different purpse Rather calling same content with different name ,             also serves same purpose       
==================== LINUX IS SEXY ===========================================

====================== JAI MAHAKAL ==========================================

              
