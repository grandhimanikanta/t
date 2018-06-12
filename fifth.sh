#!/bin/bash

while [ TRUE ]
do
  echo "enter a option"
  echo "1.add a user"
  echo "2.search a user"
  echo "3.delete a user"
  echo "4.exit"
  read n
 case $n in
 1 )echo "enter a username to add"
    read uname
    echo "$uname" >> records/"$uname".txt
    read phno
    echo "$phno" >> records/"$uname".txt
    read mailid
    echo "$mailid" >> records/"$uname".txt
    ;;
 2 )echo "enter a username to searcj"
    read uname
    cat records/"$uname".txt
    ;;
 3 )echo "enter a username to delete"
    read  delete
    rm -rf records/"$delete".txt
    ;;
 4 )exit 0
   ;;
esac
done
