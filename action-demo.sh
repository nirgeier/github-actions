#!/bin/bash

# Clear prevoius screen data
clear

# Start the docker runtime 
colima start

# Get the root folder of this project 
ROOT_FOLDER=$(git rev-parse --show-toplevel)

# Load the colors script
source ${ROOT_FOLDER}/_utils/colors.sh

# Remove old workflows
rm -rf *.yaml ${ROOT_FOLDER}/.github/workflows
mkdir -p ${ROOT_FOLDER}/.github/workflows

# Copy the desired demo workflow
echo -e "${COLOR_YELLOW}- Copying desired workflow files ${COLOR_GREEN}"
find ${ROOT_FOLDER}/samples -name \*.yaml -exec cp {} ${ROOT_FOLDER}/.github/workflows/ \;
echo -e "${COLOR_OFF}"

# Add and push the code to git
git up

exit 0;

display_usage() { 
	echo -e "${COLOR_YELLOW} This script will copy and run the sample files to the required folder.${COLOR_OFF}" 
    # $0 = The script name
	echo -e "${COLOR_YELLOW} Usage: ${COLOR_GREEN}$0 ${COLOR_CYAN}[Path to sample] ${COLOR_OFF}\n" 
	} 

# Check whether user had supplied -h or --help . If yes display usage 
if [[ ( $@ == "--help") ||  $@ == "-h" || $1 == "" ]] 
then 
    echo -e "${COLOR_RED} -------------------------- ${COLOR_OFF}"
    echo -e "${COLOR_RED} - Missing workflow files - ${COLOR_OFF}"
    echo -e "${COLOR_RED} -------------------------- ${COLOR_OFF}"
    echo -e ""
    
    display_usage
    exit 0
fi 




#git add . && git commit -m"Added commit" && git push -f

# Print list of all workflows
#act --reuse --pull=false --container-architecture=linux/amd64 -j job_01
#act --reuse --pull=false --container-architecture=linux/amd64 -v -j build-docker

