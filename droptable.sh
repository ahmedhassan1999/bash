#!/bin/bash
function dropTable
{
  echo -e "Please Enter Your Table Name: \c"
  read tableName
  . ../validInput $tableName
  resultd=$?
  if [ $resultd == 1 ]
   then
   . ../searchExitfile $tableName
   resultd2=$?
   if [ $resultd2 == 0 ]
   then
   echo "Table $tableName Not Found"
   else
    rm $tableName* 2>>./.error.log
    echo "Table $tableName Droped Successfully"
    tableMenu
   fi
  elif [ $resultd == 2 ]
  then 
  echo "You Entered Space"
  else
   echo "Invalid Inpute"
  fi
  tableMenu
}


