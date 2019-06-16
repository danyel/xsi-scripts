#!/bin/bash

# Jvm App Initializer
APP_HOME=/app

echo "Setting user: "
read user

USER_HOME=$APP_HOME/$user
SCRIPT_HOME=$USER_HOME/scripts

mkdir -p $APP_HOME
addgroup jvmapp
adduser --home $USER_HOME $user
usermod -aG jvmappdocker $user
echo "export PATH=$PATH:$SCRIPT_HOME" >> $USER_HOME/.bashrc
echo "export USER_HOME=$USER_HOME" >> $USER_HOME/.bashrc
echo "export SCRIPT_HOME=$SCRIPT_HOME" >> $USER_HOME/.bashrc
git clone https://github.com/danyel/xsi-scripts.git $SCRIPT_HOME
chown $user:$user -Rv $USER_HOME
chmod +x $SCRIPT_HOME/*