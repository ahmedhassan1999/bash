#!/bin/bash

function renameDb
{
  echo -e "Please Enter The Current Database Name: \c"
  read oldDBName 
  while [ ! -d "$oldDBName" ]
  do
    echo -e "$oldDBName not Exist Please Enter Existing Database Name: \c"
    read oldDBName 
  done
  echo -e "Please Enter New Database Name: \c"
  read newDBName
  while [ -d "$newDBName" ]
  do
    echo -e "$newDBName Already exist Please Enter another name: \c"
    read newDBName 
  done
  mv $oldDBName $newDBName 2>>./.error.log
  if [ $? == 0 ]; 
  then
  echo "Database Renamed Successfully from $oldDBName to $newDBName "
  else
     echo "Error Renaming The Database" 
  fi
}

