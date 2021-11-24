#!/bin/bash

var=$(pwd)
chmod +x  $var/tfshell.sh 2> /dev/null
sudo mv $var/tfshell.sh /usr/local/bin/tfshell.sh

echo "Enter the Module Name: "
#Read User Input
read folder_name

#Print module name entered by user
echo "Entered Module Name is: $folder_name"

#Create Directory using module name
echo "Creating $folder_name directory..."
mkdir $folder_name

echo "Creating files in $folder_name..."
touch "$folder_name/main.tf" "$folder_name/variables.tf" "$folder_name/outputs.tf" "$folder_name/terraform.tfvars" "$folder_name/providers.tf" "$folder_name/backend.tf"
