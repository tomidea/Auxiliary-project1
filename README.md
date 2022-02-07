# Auxiliary-project1

In this project, you need to onboard 20 new Linux users onto a server. Create a shell script that reads a csv file that contains the first name of the users to be onboarded.

This script would be able to do the following:
- Read the CSV file and create each user on the server, and
- Add users to an existing group called developers
- The script will first check for the existence of the user on the system, before it will attempt to create.
- The user would have a default home folder
- Each user would have a .ssh folder within its HOME folder.
- For each user’s SSH configuration, create an authorized_keys file and add the public key of your current user.


