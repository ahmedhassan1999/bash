#!/bin/bash
. droptable.sh
. selectMenu
. createtable
. insertTable
. deletefrometable
. updaterecord
function tableMenu
{
  echo -e "\n**********Tables Menu**************"
  echo "*   1. Show Existing Tables       *"
  echo "*   2. Create New Table           *"
  echo "*   3. Insert Into Table          *"
  echo "*   4. Select From Table          *"
  echo "*   5. Update Table               *"
  echo "*   6. Delete From Table          *"
  echo "*   7. Drop Table                 *"
  echo "*   8. Back To Starting Menu      *"
  echo "*   9. Exit                       *"
  echo "***********************************"
  echo -e "Please Enter Your Choice: \c"
  read choice
  case $choice in
    1)  ls -I "*Meta"; tableMenu;; 
    2)  createTable ;;
    3)  insert "first";;
    4)  clear; selectMenu ;;
    5)  updateRecorde;;
    6)  deleteFromTable;;
    7)  dropTable ;; 
    8)  clear; cd .. 2>>./.error.log; startingMenu ;;
    9)  exit ;;
    *)  echo " Wrong Choice " ; tableMenu;
  esac
}