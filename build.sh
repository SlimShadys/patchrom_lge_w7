#!/bin/bash
# This is just a simple build script to download the extracted stockrom.
# Git didn't allowed us to upload such a big file, so we get it from an external source.
red=$(tput setaf 1)
green=$(tput setaf 2)
reset=$(tput sgr0)
if [ ! -f stockrom.zip ]
  then
  echo "${red}Stockrom.zip doesn't exist, downloading it now...${reset}"
  sleep 2
  curl http://download1587.mediafire.com/dq1vfeu4dyog/93mzsp4db0kqsa4/stockrom.zip > stockrom.zip
  echo "${green}Finished, starting build now...${reset}"
  sleep 2
  clear
  source ../build/envsetup.sh && cd w7
  make fullota
else
  echo "${green}Stockrom.zip found, starting build now...${reset}"
  sleep 2
  clear
  source ../build/envsetup.sh && cd w7
  make fullota
fi
