#!/bin/bash

function  valid()
{
if [[ "$1" =~  ^[1-9][0-9]*$   ]]
then 
    return 1
elif [[ "$1" =~  ^[[:alpha:]][[:alnum:]]*$ ]] 
then 
    return 2
else 

    return 3
fi

}
