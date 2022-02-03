# AUX PROJECT 1: SHELL SCRIPTING
In this project, you need to onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

Create the project folder called Shell
*mkdir Shell*

Move into the Shell folder
*cd Shell*
img

Transfer shell script to remote server

*scp -i auxproject.pem Onboarding_users.sh ubuntu@3.91.6.106:~/*
img

Confirm the Shell script is now on home directory of the server
*ls -l ~*

Move the Onboarding_users.sh to Shell directory
*mv Onboarding_users.sh Shell/*

Change to the Shell directory
*cd Shell/*

Create a csv file name names.csv
*touch names.csv*
img

Open the names.csv file
*vi names.csv*

Insert some random names into it. (One name per line)
img

create a file for the public key and private key 
*touch id_rsa.pub id_rsa*

open the file  and paste in the public key
*vi id_rsa.pub*
img

open the file  and paste in the public key
*vi id_rsa*
img

Set the permision for Onboarding_users.sh
*chmod +x Onboarding_users.sh*

Create the developer group
*sudo groupadd developers*

Run the shell script along with the file as regular user
*ubuntu@ip-172-31-27-58:~/Shell$ ./Onboarding_users.sh names.csv*
img

Switch to root user and run the command again
*sudo su*
*root@ip-172-31-27-58:/home/ubuntu/Shell# ./Onboarding_users.sh names.csv*


