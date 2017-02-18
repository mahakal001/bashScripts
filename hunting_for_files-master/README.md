 # hunting_for_files
  ========================  I BET YOU WILL ENJOY THIS README    ===========================
=============================== Hunting_For_Files  =============================================================
*****************************************************************************************************************
@ succesfully tested on ubuntu 14.04 x86-64                                                                     *
@ name of bash script : hunting_for_files                                                                       *
@ programmer : Mahakal                                                                                          *
@ date : NOV,2016                                                                                               *
@ USING IT :                                                                                                    *
  ~THE GLOBAL WAY:                                                                                              *
             put the source file in the  directory which is mentioned in PATH env variable cd into the          *
             directory which you want to manipulate and type                                                    *
	             $ hunting_for_files                                                                              *
	           for piping to less , which i suggest .                                                             *
	             $ hunting_for_files | less                                                                       *
 ~THE LOCAL WAY:                                                                                                *
              put source code int the directory you want to manipulate and then                                 *
	      cd to that directory and running                                                                        *
	                $ ./hunting_for_files | less                                                                  *
       the difference is in the "./" in the begining....mind it                                                 *
*****************************************************************************************************************
@ why this name : 
                 This bashscript traverse the present working directory
                 recursively with sole puspose of   " hunting_for_files"
                 if it finds a file(video,mp4 etc),then it throws the file content for you
                 you can either have it to STD_OUT ..But my advice is to pipe to 
                 less ..(not video,mp4..haha)
@ what you can do:
                1)  The most important thing that you would like to do is to change the 
                    name of  this file to short and sexy one. (advice : Emma )
                2)  you can also make the code more efficient .. by ommiting some
                    commands like "cd" and just using full path name for everything
                
@ what you should NOT do:
                    if any of your file is zip , tar , or binary ( pics,mp4,mp3 )
                    and you run this => your display will dance.. because it is just
                   'cat'ing them to make your display going weird with your heart
                    cursing me.....

@ what you certainly should do :
		   Beside thanking me ....
                   you should check the type of file before cat`ing it..with the code
                   which should look something like:

                   type=`file <name_of_file>`
                   match=`echo $type | grep  ASCII `
                   if [ $match = ASCII ]
                         cat <file_name>
                   else
                        continue

        Ofcourse ,thats just a demo ,infact grep will produce the entire line containing 
        ASCII word , so you have to extract that word...Be creative man ..Linux is Sexy

@ Usefullness:
             if you have servel ascii text file in one folder which you are searching for
	     a particular information you can  do some matching after cat'ing every file 
	     and apply grep for that ..

@ Request: 
         this piece of code is written for fun purpose PLEASE don't abuse it .. Rather 
	 make it more beautiful with your skills

======== Thanks for reading this and having BET (in the begininng) ==========
