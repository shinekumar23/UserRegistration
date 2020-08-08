#!/bin/bash -x
read -p "Enter first Name: " firstName
read -p "Enter Last Name: " lastName
firstNamePattern="^[A-Z]{1}[a-z]{2,}$"

if [[ $firstName =~ $firstNamePattern ]]
then 
					echo "valid first name"
else 
					echo "Invalid first name"
fi

if [[ $lastName =~ $firstNamePattern ]]
then 
               echo "valid last name"
else 
               echo "Invalid last name"
fi



