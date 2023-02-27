#Always run either as root or sudo
mount -o rw,remount /

#Add user to to the sudo group
adduser cerebros sudo

#Add user to the admin group
#adduser cerebros admin

####################################
#Editing the sudoers file

#Backing up the sudoers file
#cp /etc/sudoers /etc/sudoers.orginal

#Open the sudoers file
#visudo

#https://www.tecmint.com/fix-user-is-not-in-the-sudoers-file-the-incident-will-be-reported-ubuntu/

####################################
#Setting correct permissions on sudoers file

#chmod  0440  /etc/sudoers

#exit
