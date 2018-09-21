#!/bin/bash
set -e

DEFAULT_OS=Ubuntu_64
DEFAULT_RAM=4096
DEFAULT_CPU_COUNT=2
DEFAULT_DISK_SIZE=40960
# VDI|VMDK|VHD
DEFAULT_DISK_FORMAT=VDI


print(){
    echo -e $1 >&2
}

stop(){
    exit 1
}

showusage(){
    print
    print "Usage:"
    print "   $ name=\e[4mmachinename\e[0m [ostype=\e[4mmachinename\e[0m] [ram=\e[4mramSizeInMB\e[0m]] [disksize=\e[4mdiskSizeInMB\e[0m]] $0"
    print
}

show_bad_parameter(){
    print "\e[1;31m$1\e[0;31m not a accepted as \e[4m$2\e[0m"
    print
    stop   
}

check_set_param(){
    param_name=$1
    param=$2
    default_value=$3
    test_expression=$4
    debug=$5

    if [ -n "$debug" ]; then
        print "name $param_name"
        print "value $param"
        print "default $default_value"
        print "test $test_expression"
    fi
    
    if [ -z "$param" ]; then
        if [ -z "$default_value" ]; then
            print "\e[1;31m$param_name\e[0;31m is mandatory.\e[0m"
            showusage
            stop
        else
            print "Defaulting \e[4m$param_name\e[0m to \e[1m$default_value\e[0m"
            param=$default_value
        fi
    elif [ -n "$test_expression" ]; then
        param_test=$(echo "$param" | grep -oe "$test_expression")
        if [ -z $param_test ]; then
            show_bad_parameter "$param" $param_name
        fi
    fi
    echo $param
}

# name
name=$(check_set_param "name" "$name" "" "^[a-zA-Z0-9]+$")

# ostype
print "here 1"
ostype=$(check_set_param ostype "$ostype" "$DEFAULT_OS" "")
ostypetest=$(VBoxManage list ostypes | grep -oP "^ID\:\s+$ostype$")
if [ -z "$ostypetest" ]; then
    show_bad_parameter "$ostype" ostype
fi

#ram
ram=$(check_set_param ram "$ram" $DEFAULT_RAM "^[0-9]+$")
# if [ -z $ram ]; then
#     echo "Defaulting memory to $DEFAULT_RAM"
#     ram=$DEFAULT_RAM
# elif [ -z $(echo "$ram" | grep -oP "^[0-9]+$")]; then
#     echo -e "\e[1;31m$ram\e[0;31m not accepted as memory.\e[0m"
#     exit 1
# fi

cpustest=$(echo "$cpus" | grep -oP "^[0-9]+$")
cpus=$(check_set_param cpus "$cpus" $DEFAULT_CPU_COUNT $cpustest)
# if [ -z $cpus ]; then
#     echo "Defaulting CPU count to $DEFAULT_CPU_COUNT"
#     cpus=$DEFAULT_CPU_COUNT
# elif [ -z $(echo "$cpus" | grep -oP "^[0-9]+$")]; then
#     echo -e "\e[1;31m$cpus\e[0;31m not accepted as CPU count.\e[0m"
#     exit 1
# fi

disktest=$(echo "$disksize" | grep -oP "^[0-9]+$")
disksize=$(check_set_param disksize "$disksize" $DEFAULT_DISK_SIZE $disktest)
# if [ -z $disksize ]; then
#     echo "Defaulting memory to $DEFAULT_DISK_SIZE"
#     ram=$DEFAULT_DISK_SIZE
# elif [ -z $(echo "$disksize" | grep -oP "^[0-9]+$")]; then
#     echo -e "\e[1;31m$disksize\e[0;31m not accepted as memory.\e[0m"
#     exit 1
# fi

echo "Name: $name"
# Create and Register VM
echo
#createvmresult=$(VBoxManage createvm --name "$name" --ostype $ostype --register)

# uuid=$(echo "$createvmresult" | grep -oP "([a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12})")
# if [ -z $uuid ]; then
#     echo -e "\e[31mError creating VM.\e[0m"
#     echo $createvmresult
#     exit 1
# fi

# echo -e "Machine created with UUID: \e[1m$uuid\e[0m"

# Set RAM size and CPU count
#addramresult=$(VBoxManage modifyvm $uuid --memory $ram --cpus $cpus)

# Create Disk
#VBoxManage createhd --filename VirtualBox\ /$name/name.vdi --size 18000 --format VDI
#VBoxManage storagectl KaliLinux --name "SATA Controller" --add sata --controller IntelAhci
#VBoxManage storageattach KaliLinux --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium VirtualBox\ VMs/KaliLinux/KaliLinux.vdi

# Mount CD
#VBoxManage storagectl KaliLinux --name "IDE Controller" --add ide --controller PIIX4
#VBoxManage storageattach KaliLinux --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium Desktop/kali-linux-1.0.1-i386.iso 

# Start VM
# VBoxManage startvm $uuid


# vboxmanage list systemproperties | grep folder
# vboxmanage list systemproperties | grep folder | cut -d" " -f13