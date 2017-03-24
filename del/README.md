# COMMAND LINE VERSION OF TRASH

# GENERAL INFO
 @ Coder    : Mohit Kumar
 @ Contact  : mkal001@cyberdude.com  
 @ Testing  : successfully tested on 64bit ubuntu-linux

# what is this ? Why it exist /
  
  The only reason of using this is the danger of using "rm" while removing file.
  You should surf web for "dangerous of using rm"
  
  The alternative is that we can use a directory as trash and then moving those
  files to this directory which you wanna remove.Thats why it exist.

# How it works

  However the codes are very easy to understand if you know even a liitle about
  general programming and scripting.The code is also well commented.
  But still the working is as:

  1) first check if atleast one argument is provided or not
     if there are no args,script exit with return status 1.

  2) Then colors code are build ,which can then be use to coloring the output.

  3) Display the Total no. of files that have been asked to delete.

  4) Check that if the directory named `trash` exist or not.
     if directory does not exist,then build the directory using the "mkdir"
     command.

  5) now start moving given file to trash one by one.
     since the well know `mv` command is used for this purpose,so any error
     that it encounter may stop the deleting process.The script will exit at
     very first error it encountered.

  6) Every file which is moved to trash is displayed

  7) At last ,total files deleted are displayed

#   DoN't sToP TiLl YoUr GoAl is acHiEvEd     

  

