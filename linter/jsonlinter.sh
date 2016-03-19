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

inputdir=$1
dirpath=$2

if [[ $# -eq 0 ]] ; then

echo -e "\n ${red} Please Provide the path of the Json Directory \n \n \n  Usage: jsonlinter --prefix= "/path/to/dir/" ${reset} "

exit 0
fi

cd $dirpath


echo -e " \n ${green} checking for Json Files  ${reset}"


 find  -type f -name "*.json" -exec jsonlint -c {} \;

exit 0

