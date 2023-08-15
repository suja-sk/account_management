#!/bin/bash

#create user 

create_user () {
    read -p " Please enter the username: " username
    if [ id $username &> /dev/null ];
        then
            echo " The username $username is already exists.Please choose a diffrent username "
    else
    read -p "Enter the password for $username: " password
    sudo useradd -m -p $password $username
    echo " User account $username created sucessfully."
    fi
}

create_user