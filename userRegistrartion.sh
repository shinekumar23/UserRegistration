#!/bin/bash -x
read -p "Enter first Name: " firstName
read -p "Enter Last Name: " lastName
read -p "Enter email id: " emailid
read -p "Enter mobile number: " mobile
read -p "Enter password: " password

validfirstName="Invalid first name entered"
validLastName="Invalid last name entered"
validemailid="Invalid email id entered"
validmobile="Invalid mobile number entered"
validPassword="Invalid password entered"

firstNamePattern="^[A-Z]{1}[a-z]{2,}$"
emailPattern="^([a-zA-Z]{1}[a-zA-Z0-9]*)([-.+_]{1}[a-z0-9]+)*@([a-z0-9]+)\.([a-z]{2,5})([.]{1}[a-z]{2})?$"
mobilePattern="^[0-9]{2}([ ]{1}[0-9]{10})$"

if [[ $firstName =~ $firstNamePattern ]]
then 
		        echo "valid first name"
			validfirstName=$firstName
else 
		      	echo "Invalid first name"
fi

if [[ $lastName =~ $firstNamePattern ]]
then 
     	           	echo "valid last name"
			validLastName=$lastName
else 
            		echo "Invalid last name"
fi

if [[ $emailid =~ $emailPattern ]]
then 
		        echo "Valid email address"
	                validemailid=$emailid
else
		        echo "Invalid email address"
fi

if [[ $mobile =~ $mobilePattern ]]
then 
            		echo "Valid mobile number"
			validmobile=$mobile
else
       		        echo "Invalid mobile number"
fi

if [[ ${#password} -ge 8 && "$password" == *[[:upper:]]* && "$password" == *[[:lower:]]* && "$password" == *[0-9]* && "$password" == *[@#^*]* ]]
then
		     	at=$(echo $password | tr -cd '@' | wc -c)
                        hash=$(echo $password | tr -cd '#' | wc -c)
                        cap=$(echo $password | tr -cd '^' | wc -c)
                        star=$(echo $password | tr -cd '*' | wc -c)
                        if [ $(($at+$hash+$cap+$star)) -gt 1 ]
                        then
                        		echo "invalid password"
                        else 
                        		echo "valid password"
					validPassword=$password
                        fi

else
		     			echo "Invalid password"
fi
echo -e  "first Name: $validfirstName\nlast Name: $validLastName\nEmailid: $validemailid\nmobile No: $validmobile\nPassword: $validPassword"
