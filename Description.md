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
cd Shell/

Create a csv file name names.csv
touch names.csv

Open the names.csv file
vi names.csv 
