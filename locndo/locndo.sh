echo -e " You are welcome to LOCNDO short for LOCate aNd DO "

if [ $# -ne 1  ]
then
   echo "************************ USAGE ERROR *************************************"
   echo "USAGE: <./locndo> < pattern_to_locate                                    *" 
   echo "**************************************************************************"
   exit
fi

ESC_SEQ="\x1b["
COL_GREEN=$ESC_SEQ"32;01m"
COL_RESET=$ESC_SEQ"39;49;00m"

tolocate=$1                 # will hold the "pattern to locate"
count=0        
lineNo=0

touch tmpfile               # create a temp file
locate $1 > tmpfile         # result of locate is directed to temp file

IFS=$'\r\n'                 # field separator is set to newline or carriage return

for i in `cat tmpfile`      # this loop will present the locate's output in good way
do
   echo -e  "$COL_GREEN [$count] $COL_RESET : $i"
   count=$(($count + 1))
done 

echo "please enter the number corresponding to the file you are interested in"
read  lineNo    # get the index of file of interest

if [ $lineNo -ge $count ]    # check if we get valid index or not
then
   echo "sorry this index does not exist"
   exit
fi

echo "which app do you want to handle this file"
read  app   #read the application to use to handle that file

echo "Ok,so here we Go"

count=0                          # reinitializing the count 

##################### this loop will choose interested file #################################
for i in `cat tmpfile`           
do
   if [ $count -eq $lineNo ]     # if ( we have reached the interested index )  
  then
  	 echo "$app $i $count"       
     del.sh tmpfile               # delete the temporary created file
	 $app $i &                    # run (in background)
     exit                         # exit
  else
	 count=$(($count + 1))
  fi
done





