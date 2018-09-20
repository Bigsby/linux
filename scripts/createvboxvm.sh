#!/bin/bash

DEFAULT_OS=Ubuntu_64
DEFAULT_RAM=4096

showusage(){
    echo "Usage:"
    echo -e "   $ name=\e[4mmachinename\e[0m [ostype=\e[4mmachinename\e[0m] $0"
    echo
}

if [ -z $name ]; then
    echo -e "\e[1;31mname\e[0;31m needs to be set.\e[0m"
    showusage
    exit 1
fi

if [ -z $ostype ]; then
    echo "Defaulting ostype to '$DEFAULT_OS'"
    ostype=$DEFAULT_OS
else
    if [ -z $(vbox list ostypes | grep -e "^ID:\s\+$ostype$") ]; then
        echo -e "\e[1;31m$ostype\e[0;31m not a recognized OS Type.\e[0m"
        exit 1
    fi
fi

if [ -z $ram ]; then
    echo "Defaulting memory to $DEFAULT_RAM"
    ram=$DEFAULT_RAM
elif [ -z $(echo "$ram" | grep -oP "^[0-9]+$")]; then
    echo -e "\e[1;31m$ram\e[0;31m not accepted as memory.\e[0m"
fi

echo
createvmresult=$(VBoxManage createvm --name "$name" --ostype $ostype --register)

uuid=$(echo "$createvmresult" | grep -oP "([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})")
if [ -z $uuid ]; then
    echo -e "\e[31mError creating VM.\e[0m"
    echo $createvmresult
    exit 1
fi

echo -e "Machine created with UUID: \e[1m$uuid\e[0m"
addramresult=$(VBoxManage modifyvm $uuid --memory $ram)

# Create Disk
#VBoxManage createhd --filename VirtualBox\ VMs/KaliLinux/KaliLinux.vdi --size 18000 --format VDI
#VBoxManage storagectl KaliLinux --name "SATA Controller" --add sata --controller IntelAhci
#VBoxManage storageattach KaliLinux --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium VirtualBox\ VMs/KaliLinux/KaliLinux.vdi

# Mount CD
#VBoxManage storagectl KaliLinux --name "IDE Controller" --add ide --controller PIIX4
#VBoxManage storageattach KaliLinux --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium Desktop/kali-linux-1.0.1-i386.iso 

# Start VM
# VBoxManage startvm $uuid


# vboxmanage list systemproperties | grep folder