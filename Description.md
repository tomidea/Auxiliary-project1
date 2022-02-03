# AUX PROJECT 1: SHELL SCRIPTING
In this project, you need to onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

Create the project folder called Shell

*mkdir Shell*

Move into the Shell folder

*cd Shell*

<img width="354" alt="mkdir shell" src="https://user-images.githubusercontent.com/51254648/152443199-8c5ff50e-f372-4983-b7b2-1ec10ff45a91.png">


Transfer shell script to remote server

*scp -i auxproject.pem Onboarding_users.sh ubuntu@3.91.6.106:~/*

<img width="805" alt="file transfer" src="https://user-images.githubusercontent.com/51254648/152443206-eb522108-b590-41ec-add3-77b674f37fb4.png">


Confirm the Shell script is now on home directory of the server

*ls -l ~*

Move the Onboarding_users.sh to Shell directory

*mv Onboarding_users.sh Shell/*

Change to the Shell directory

*cd Shell/*

Create a csv file name names.csv

*touch names.csv*

<img width="467" alt="touch dir name" src="https://user-images.githubusercontent.com/51254648/152443209-154ea6ec-6883-479e-8c3a-8814c05ec64a.png">

Open the names.csv file

*vi names.csv*

Insert some random names into it. (One name per line)

<img width="204" alt="namecsv" src="https://user-images.githubusercontent.com/51254648/152443204-bda657c7-f610-4aed-a17d-100245808442.png">


create a file for the public key and private key 

*touch id_rsa.pub id_rsa*

open the file  and paste in the public key

*vi id_rsa.pub*

<img width="857" alt="Public key" src="https://user-images.githubusercontent.com/51254648/152443214-07d3a207-5b97-4e2e-a21b-68517f5eaf34.png">


open the file  and paste in the public key

*vi id_rsa*

<img width="532" alt="private key" src="https://user-images.githubusercontent.com/51254648/152443212-407aef78-6d14-4aa6-b21d-181564f3d6ee.png">


Set the permision for Onboarding_users.sh

*chmod +x Onboarding_users.sh*

<img width="443" alt="Set permission shell script" src="https://user-images.githubusercontent.com/51254648/152443216-67a29fbb-9747-45e6-83d8-40c2134496e3.png">

Create the developer group

*sudo groupadd developers*

Run the shell script along with the file as regular user

*ubuntu@ip-172-31-27-58:~/Shell$ ./Onboarding_users.sh names.csv*

<img width="456" alt="Run as user" src="https://user-images.githubusercontent.com/51254648/152443219-a27f75cb-d7ad-4367-a21d-0f9cdb8c1323.png">


Switch to root user and run the command again

*sudo su* and run the shell script along with the csv file

*root@ip-172-31-27-58:/home/ubuntu/Shell# ./Onboarding_users.sh names.csv*

<img width="550" alt="Run as root" src="https://user-images.githubusercontent.com/51254648/152443224-e2f6546a-5100-40dd-8562-f3cccaae90a2.png">


Check that the users have been created

root@ip-172-31-27-58:/home/ubuntu/Shell# ls -l /home/

<img width="546" alt="user created" src="https://user-images.githubusercontent.com/51254648/152443221-36a796e4-08e1-4ffe-bc3f-35ab435660ec.png">


## Lets connect with one of the users

create a pem folder and paste the private key in it 

*vi Aux-project.pem*

set the permision for Aux-project.pem

*chmod 600 Aux-project.pem*

Connect to the server with user "Ade"

*ssh -i Aux-project.pem Ade@3.91.6.106*

Check current user

*echo $USER*

<img width="118" alt="current user" src="https://user-images.githubusercontent.com/51254648/152443227-55bd170c-885a-4bd5-a806-c74521c94af1.png">

