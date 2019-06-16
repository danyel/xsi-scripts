#!/bin/bash

######################
# Jvm App Initializer
######################
user=""
APP_HOME=/app
USER_HOME=$APP_HOME/$user
SCRIPT_HOME=$USER_HOME/scripts
NEXUS_URL=http://10.0.1.34:8081/nexus
BASH_RC=$USER_HOME/.bashrc
WORK_SPACE=$USER_HOME/workspace

######################
# FUNCTIONS
######################
function set_environments {
    APP_HOME=/app
    USER_HOME=$APP_HOME/$user
    SCRIPT_HOME=$USER_HOME/scripts
    NEXUS_URL=http://10.0.1.34:8081/nexus
    BASH_RC=$USER_HOME/.bashrc
    WORK_SPACE=$USER_HOME/workspace
}

function set_user {
    user=$1
    set_environments
    echo $BASH_RC
}

function make_app_dir {
    mkdir -p $APP_HOME
}

function init_bashrc {
    echo "export PATH=$PATH:$SCRIPT_HOME" >> $BASH_RC
    echo "export USER_HOME=$USER_HOME" >> $BASH_RC
    echo "export SCRIPT_HOME=$SCRIPT_HOME" >> $BASH_RC
    echo "export NEXUS_URL=$NEXUS_URL" >> $BASH_RC
    echo "export WORK_SPACE=$WORK_SPACE" >> $BASH_RC
}

function init_user {
    addgroup jvmapp
    adduser --home $USER_HOME $user
    usermod -aG jvmappdocker $user
}

function make_workspace {
    mkdir $WORK_SPACE
}

function update_installer {

}

function __main__ {
    set_user $1
    make_app_dir
    init_user
    init_bashrc
    make_workspace
}

######################
# MAIN
######################

__main__ $1


