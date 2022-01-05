#!/bin/bash
. openDB
. dropDB
. renameDB.sh
echo "Welcome To the DBMS"
function startingMenu 
{
  echo -e "\n**********starting Menu***********"
  echo "*  1. open DB                    *"
  echo "*  2. Create DB                  *"
  echo "*  3. Rename DB                  *"
  echo "*  4. Drop DB                    *"
  echo "*  5. show DB                    *"
  echo "*  6. Exit                       *"
  echo "**********************************"
  echo -e "Please Enter Your Choice: \c"
  read ch
  case $ch in
    1)  openDb ;;
    2)  . ./createDb ;;
    3)  renameDb ; startingMenu;;
    4)  dropDb   ; startingMenu;;
    5)  ls -d */ ; startingMenu;;
    6)  exit ;;
    *)  echo " Wrong Choice" ; startingMenu;
  esac
}
startingMenu
