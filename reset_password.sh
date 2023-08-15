#!/bin/bash

reset_password(){
    read -p "Please enter the username: " username
    if id $username > /dev/null ;then
        read -p "Enter the new password: " password
        echo "$username:$password" | sudo chpasswd
        echo "Password for user '$username' reset sucessfully"
    else
        echo " Error, the username $username does not exits,Please enter valid username"
    fi
}

reset_password