#!/bin/bash
# This script would be able to do the following:
# Read the CSV file and create each user on the server, and
# add users to an existing group called developers
# The script will first check for the existence of the user on the system, before it will attempt to create.
# The user would have a default home folder
# Each user would have a .ssh folder within its HOME folder.
# For each user’s SSH configuration, create an authorized_keys file and add the public key of your current user.

FILE=${1}
PASSWORD=pass123
IFS=$'\n'
if [ $(id -u) -eq 0 ]
then 
for NAME in $(cat ${FILE})
    do echo $NAME
        if id "$NAME" &> /dev/null
        then
            echo "This user exist"
        else 
            useradd -m -d /home/$NAME -g developers $NAME  
             
#create a ssh folder in the user home folder
            su - -c "mkdir ~/.ssh" $NAME
                echo ".ssh directory created for new user"
                echo

# set the user permission for the ssh dir
            su - -c "chmod 700 ~/.ssh" $NAME
                echo "user permission for .ssh directory set"
                echo

# create an authorized-key file
            su - -c "touch ~/.ssh/authorized_keys" $NAME
                echo "Authorized Key File Created"
                echo

# set permission for the key file
            su - -c "chmod 600 ~/.ssh/authorized_keys" $NAME
                echo "user permission for the Authorized Key File set"
                echo

# create and set public key for users in the server
            cp -R "/home/ubuntu/shell/id_rsa.pub" "/home/$NAME/.ssh/authorized_keys"
                echo "Copied the Public Key to New User Account on the server"
                echo
                echo

                echo "USER CREATED"
  
            sudo echo -e "$PASSWORD\n$PASSWORD" | sudo passwd "$NAME" 
            sudo passwd -x 5 $NAME
        fi

    done
else
    echo "This is not an Admin"



fi