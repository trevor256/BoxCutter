#!/bin/sh
#####################################
#  Bash script to scan linux systems
#  Author https://github.com/trevor256
#####################################
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
bold=$(tput bold)
normal=$(tput sgr0)

        
echo "${GREEN}${bold} scan domain or IP${NC}${normal} (y/n)"
read -r reply
  if [ "$reply" = y ] || [ "$reply" = Y ]
   then
      read -p "Enter Domain or IP: " IP
      nmap -F ${IP}
    else
       echo "${RED}${bold} nmap, not installed${NC}${normal}"
    fi
