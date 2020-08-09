#!/bin/bash -x
read -p "Enter first Name: " firstName
read -p "Enter Last Name: " lastName
read -p "Enter email id: " emailid
read -p "Enter mobile number: " mobile
firstNamePattern="^[A-Z]{1}[a-z]{2,}$"
emailPattern="^([a-zA-Z]{1}[a-zA-Z0-9]*)([-.+_]{1}[a-z0-9]+)*@([a-z0-9]+)\.([a-z]{2,5})([.]{1}[a-z]{2})?$"
mobilePattern="^[0-9]{2}([ ]{1}[0-9]{10})$"

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

if [[ $emailid =~ $emailPattern ]]
then 
		      echo "Valid email address"
else
		      echo "Invalid email address"
fi

if [[ $mobile =~ $mobilePattern ]]
then 
                      echo "Valid mobile number"
else
                      echo "Invalid mobile number"
fi


