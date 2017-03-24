#/bin/bash

if [ $# -eq 0 ]   # if no file is specified
then
    echo "USAGE: <$0> <files_TO_delete>........."
    exit 1
fi


ESC_SEQ="\x1b["               # escape sequence 
COL_GREEN=$ESC_SEQ"32;01m"    # "\x1b[32;01m" for green
COL_YELLOW=$ESC_SEQ"33;01m"   # "\x1b[33;01m" for yellow
COL_BLUE=$ESC_SEQ"34;01m"     # "\x1b[34;01m" for blue                           
COL_RED=$ESC_SEQ"31;01m"      # "\x1b[31;01m" for red                         
COL_VIOLET=$ESC_SEQ"35;01m"   # "\x1b[35;01m" for violet
COL_RESET=$ESC_SEQ"39;49;00m" # "\x1b[39;49;00m" for Resetting the terminal color

count=0

echo -e "\t\t$COL_VIOLET passed files: $# $COL_RESET " # no. of passed files

if [ -d ~/trash ]    # check if the dir "trash" exist at "~/"
then
   echo " "
else                  # if directory does not exist,Make one
    mkdir  ~/trash
fi

for file in "$@"    # iterative handling of files
do
    mv $file ~/trash/

    if [ $? -ne 0 ]  # if return value != 0 => ERROR OCCURED 
    then
        echo -e "\t\t$COL_RED An error incurred while deleting $COL_RESET"
        exit 1
    fi

    echo -e "\t\t$COL_GREEN Deleted: $COL_YELLOW $file $COL_RESET "
    count=$[ $count + 1]   
done

  echo -e "\t\t$COL_VIOLET Total Files deleted $count $COL_RESET"
