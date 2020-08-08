#!/bin/bash -x
read -p "Enter first Name: " firstName
firstNamePattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstName =~ $firstNamePattern ]]
then 
					echo valid
else 
					echo Invalid 
fi
