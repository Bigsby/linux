#!/bin/bash

DEFAULT_OS=Ubuntu_64

if [ -z $name ]; then
    echo "'name' needs to be set."
    exit 1;
fi

if [ -z $ostype ] then
    echo "Defaulting ostype to '$DEFAULT_OS'"
    ostype=$DEFAULT_OS
else
    if [ -z $(vbox list ostypes | grep -e "^ID:\s\+$ostype$") ]; then
        echo "'ostype' $ostype not recognized"
        exit 1;
    fi
fi

createvmresult=$(VBoxManage createvm --name '$name' --ostype $ostype --register)







#VBoxManage createvm --name $name --ostype $ostype --register
