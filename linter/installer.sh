#!/bin/bash

#- usage-example 1.0
#- Copyright (C) 2016 Shantanu

## Usage: usage-example [options] <argv>...
##
##       -h     Show help options.
##       -v     Print version info.

help=$(grep "^## " "${BASH_SOURCE[0]}" | cut -c 4-)
version=$(grep "^#- "  "${BASH_SOURCE[0]}" | cut -c 4-)


red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

which npm >/dev/null 2>&1


if [ $? -ne 0 ]

then

echo -e "${red} Npm not found  I am going to Install it for you"

sudo yum install epel-release

fi

yum -y install npm  >/dev/null 2>&1

if [ $? -ne 0 ]

then

echo -e "\n ${red} Installation Failed, PLease check logs"


fi

which jsonlint >/dev/null 2>&1

if [ $? -ne 0 ]

then

echo -e "\n \n ${green}Installing Jsonlint" ;npm install jsonlint -g 2>&1

else 

echo -e " \n ${green}INstallation Completed  this system ${reset}"

sudo cp -rp jsonlinter.sh /usr/bin/jsonlinter 

 chmod +x /usr/bin/jsonlinter

fi

if [ $? -ne 0 ]

then

echo -e "Instalation Failed"

else 

echo -e "\n ${green}Jsonlint is installed"

fi

