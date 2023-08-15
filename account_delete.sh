#!/bin/bash

delete_account() {
    read -p "Please enter the username to delete: " username
    if  id "$username" 1> /dev/null ;
    then
        sudo userdel -r "$username"
        echo " $username is sucessfully deleted"
    else
        echo " Error : The username $username does not exits. Please enter valid user"
    fi
}

delete_account