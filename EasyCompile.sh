#!/bin/bash
#This script will compile the files specified and generator object files with same name as the C file. For e.g:- example.c will give example.out
LGREEN='\033[1;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NORMAL='\033[0m'
echo -e "**************${LGREEN}Multiple ${BLUE}C${NORMAL} files compiler by ${LGREEN}Snehashis${NORMAL}**************"
if [ $# -gt 0 ]
then
	count=$#
	while(($#))
	do
		echo -e "${BLUE}Compiling${NORMAL}.....$1"
		file=${1/.*}
		cc $1 -o $file.out -lm
		echo -e "${LGREEN}Done ${NORMAL}"
		shift
	done
	echo -e "Processed ${LGREEN} $count ${NORMAL}files."
	echo -e "${LGREEN}Object files should be generated by ${BLUE}GCC compiler${LGREEN} ignore warnings${NORMAL}."
	echo "******************************************************************"
else
	echo -e "${RED}Need to spicify atleast one file. ${NORMAL}"
fi