#!/bin/bash

read -p "Username : " username
read -p "password : " password
file="/home/kali/Desktop/data.txt"
declare -a tmp

while read -r line; do
	tmp+=("$line")
done < $file


if [ $username == "admin" -a $password -eq 1234 ] 
then
	tmp+=("==========================LOGIN==================================")
	tmp+=("Username : $username")
	i="0"
	while [ $i -lt 100 ]
	do
	gcc project.c -o proj
	./proj

	read -p "Enter Number: " opt
	
	if [ $opt == 1 ]
	then
		tmp+=("Operation : Showing all files and directories....")
		echo "Showing all files and directories"
		sleep(2)
		echo "-------------------OUTPUT-----------------------"
		ls *
		
	elif [ $opt == 2 ]
	then
		tmp+=("Operation : Create New File")
		echo "Create New Files"
		echo "Select file you want to create"
		echo "1 .py"
		echo "2 .sh" 
		echo "3 .txt"
		echo "4 .js"
		echo "5 .html"
		echo "6 .css"
		read -p "Select from 1-6"  extension
		if [ $extension == 1 ]
	 	then
			read -p "Enter File Name with .py Extension" fileName
	 		if [ $fileName == "*.py" ] then
			 	touch $fileName
			echo "-------------------OUTPUT-----------------------"
			echo "File Created Successfully"
			
		 elif [ $extension == 2 ]
		 then
			 read -p "Enter File Name with .sh Extension" fileName
			 
			 if [ $fileName == "*.sh" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
		 elif [ $extension == 3 ]
		 then
			 read -p "Enter File Name with .txt Extension" fileName
			 
			 if [ $fileName == "*.html" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
	
		elif [ $extension == 4 ]
		 then
			 read -p "Enter File Name with .js Extension" fileName
			 if [ $fileName == "*.js" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
		elif [ $extension == 5 ]
		 then
			 read -p "Enter File Name with .html Extension" fileName
			 if [ $fileName == "*.html" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
		elif [ $extension == 6 ]
		 then
			 read -p "Enter File Name with .css Extension" fileName
			 if [ $fileName == "*.css" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
	 	 else
			 echo "Please select a correct option"
			 
	 	 fi
	elif [ $opt == 3 ]
	then
		tmp+=("Operation : Delete File")
		echo "Delete files"
		echo "Enter name of File"
		read fileName
		if [ $fileName == "*." ] then
			
			echo "-------------------OUTPUT-----------------------"
			if [ -f "$delfile" ];
	 		then
	 			rm $delfile
				echo "Successfully Deleted."
		else 
			echo "Enter the name as required format ---> '[filename.extension]'" 
		
		else 
			echo "File Does not Exist..Try again" 
			 
		fi
	elif [ $opt == 4 ]
	then
		tmp+=("Operation : Rename File")
		echo "-------------------OUTPUT-----------------------"
		echo "Rename files"
		read -p "Current File Name : " currentName
	 	if [ -f "$currentName" ];
	 	then
			echo "Now Enter New Name for file with Extension"
			read -p "New Name : " newName
			mv $currentName $newName
			echo "Successfully Rename. $currentName --------> $newName"
		else
	 		echo "File Not Found"
		fi
	

	elif [ $opt == 7 ]
	then
		tmp+=("Operation : Edit File Content")
		echo "Edit file"
		read -p "Enter File Name : " fileName
		echo "-------------------OUTPUT-----------------------"
		
		if [ -f "$fileName" ];
		then
			gedit $fileName
			
		else
			echo "File Not Found"
		fi

	elif [ $opt == 8 ]
	then 
		tmp+=("Operation : Search File")
		echo "Search file" 
		read -p "Enter File Name" fileName
		echo "-------------------OUTPUT-----------------------"
		if [ -f "$fileName" ];
		then
			echo "File Found."
			find /home/kali -name $fileName
			
		else
			echo "File Not Found"
			
		fi
	elif [ $opt == 5 ]
	then
		tmp+=("Operation : Checking File Details")
		echo "File Stats"
		read -p "Enter File Name" fileName
		if [ $fileName == "*." ]
			echo "-------------------OUTPUT-----------------------"
			
			if [ -f "$fileName" ];
			then
				echo "Loading Properties.."
				stat $fileName
			else
				echo "File Not Found"
			fi
		else
			echo "Enter data correctly"
		fi
		
	elif [ $opt == 6 ]
	then
		tmp+=("Operation : View File Content")
		echo "View content of file "
		read -p "Enter File Name" fileName
		
		echo "-------------------OUTPUT-----------------------"
		if [ -f "$fileName" ];
		then 	
			cat $fileName 
		else
			echo "File Not Found"
		fi
	 
	elif [ $opt == 11 ]
	then
		tmp+=("Operation : Sorting File Content")
		echo "Sort files content"
		read -p "Enter File Name" fileName
		echo "-------------------OUTPUT-----------------------"
		if [ -f "$fileName" ];
		then
			sort $fileName
		else
			echo "File Not Found"
		fi
	
	elif [ $opt == 10 ]
	then
		tmp+=("Operation : Listing All Directories")
		echo "-------------------OUTPUT-----------------------"
		echo "List of all Directories"
		echo "Loading"
		sleep(2)
		cd /
		ls -d *
	
	elif [ $opt == 9 ]
	then
		tmp+=("Operation : List Files of Particular Extensions")
		echo "List of Files with Particular extensions "
		echo "Which type of file list you want to see?"
		echo "1 .py"
		echo "2 .sh" 
		echo "3 .txt"
		echo "4 .js"
		echo "5 .html"
		echo "6 .css" 
		read -p "Select from 1-6 : " extension
		echo "-------------------OUTPUT-----------------------" 
		if [ $extension == 1 ]
		then
			echo ".py Files;" 
			ls *.py
		elif [ $extension == 2 ]
		then
			echo ".sh Files;"
			ls *.sh
		elif [ $extension == 3 ]
		then
			echo ".txt Files;" 
			ls *.txt
		
		elif [ $extension == 4 ]
		then
			echo ".js Files;" 
			ls *.js
		elif [ $extension == 5 ]
		then
			echo ".html Files;" 
			ls *.html
		elif [ $extension == 6 ]
		then
			echo ".css Files;" 
			ls *.css
		else
			echo "File Not Found" 
		fi
	
	elif [ $opt == 12 ]
	then
		tmp+=("Operation : Checking Number of Directories")
		echo "-------------------OUTPUT-----------------------"
		echo "Total number of Directories "
		echo "Loading all directories.."
		echo "Counting"
		sleep(2)
		echo */ | wc -w
	
	elif [ $opt == 13 ]
	then
		tmp+=("Operation : Number of Files in Current Directory")
		echo "-------------------OUTPUT-----------------------"
		echo "Total Numbers of Files in Current Directory "
		echo "Loading all files"
		sleep(2)
		
		echo ls -R | wc -w
	 
	elif [ $opt == 14 ]
	then 
		tmp+=("Operation : Sorting Files")
		echo "-------------------OUTPUT-----------------------"
		echo "Sort Files " 
		echo "Your Request of Sorting file is Generated." 
		echo "Sorting" 
		sleep(2)
		ls | sort
	
	elif [ $opt == 0 ]
	then
		tmp+=("$username has been logout")
		tmp+=("============================================================")
		printf "%s\n" "${tmp[@]}" > $file
		echo "Exit"
		break
	else
		echo "Please Enter correct value"
	fi
	$i=$($i+1)
	done
	
elif [ "$username" == "user" ] && [ "$password" -eq 1234 ]
then
	tmp+=("===========================LOGIN=================================")
	tmp+=("Username : $username")
	i="0"
	while [ $i -lt 100 ]
	do
	gcc project1.c -o proj
	./proj

	read opt
	if [ $opt == 1 ]
	then
		tmp+=("Operation : Showing all files and directories....")
		echo "Showing all files and directories"
		sleep(2)
		echo "-------------------OUTPUT-----------------------"
		ls *
		
	elif [ $opt == 2 ]
	then
		tmp+=("Operation : Create New File")
		echo "Create New Files"
		echo "Select file you want to create"
		echo "1 .py"
		echo "2 .sh" 
		echo "3 .txt"
		echo "4 .js"
		echo "5 .html"
		echo "6 .css"
		read -p "Select from 1-6"  extension
		if [ $extension == 1 ]
	 	then
			read -p "Enter File Name with .py Extension" fileName
	 		if [ $fileName == "*.py" ] then
			 	touch $fileName
			echo "-------------------OUTPUT-----------------------"
			echo "File Created Successfully"
			
		 elif [ $extension == 2 ]
		 then
			 read -p "Enter File Name with .sh Extension" fileName
			 
			 if [ $fileName == "*.sh" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
		 elif [ $extension == 3 ]
		 then
			 read -p "Enter File Name with .txt Extension" fileName
			 
			 if [ $fileName == "*.html" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
	
		elif [ $extension == 4 ]
		 then
			 read -p "Enter File Name with .js Extension" fileName
			 if [ $fileName == "*.js" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
		elif [ $extension == 5 ]
		 then
			 read -p "Enter File Name with .html Extension" fileName
			 if [ $fileName == "*.html" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
		elif [ $extension == 6 ]
		 then
			 read -p "Enter File Name with .css Extension" fileName
			 if [ $fileName == "*.css" ] then
			 	touch $fileName
			 echo "-------------------OUTPUT-----------------------"
			 echo "File Created Successfully"
			 
	 	 else
			 echo "Please select a correct option"
			 
	 	 fi
	 	 
	elif [ $opt == 5 ]
	then
		tmp+=("Operation : Edit File Content")
		echo "Edit file"
		read -p "Enter File Name : " fileName
		echo "-------------------OUTPUT-----------------------"
		
		if [ -f "$fileName" ];
		then
			gedit $fileName
			
		else
			echo "File Not Found"
		fi

	elif [ $opt == 6 ]
	then 
		tmp+=("Operation : Search File")
		echo "Search file" 
		read -p "Enter File Name" fileName
		echo "-------------------OUTPUT-----------------------"
		if [ -f "$fileName" ];
		then
			echo "File Found."
			find /home/kali -name $fileName
			
		else
			echo "File Not Found"
			
		fi
	
	elif [ $opt == 8 ]
	then
		tmp+=("Operation : View File Content")
		echo "View content of file "
		read -p "Enter File Name" fileName
		
		echo "-------------------OUTPUT-----------------------"
		if [ -f "$fileName" ];
		then 	
			cat $fileName 
		else
			echo "File Not Found"
		fi
	 
	
	elif [ $opt == 10 ]
	then
		tmp+=("Operation : Listing All Directories")
		echo "-------------------OUTPUT-----------------------"
		echo "List of all Directories"
		echo "Loading"
		sleep(2)
		cd /
		ls -d *
	
	elif [ $opt == 11 ]
	then
		tmp+=("Operation : List Files of Particular Extensions")
		echo "List of Files with Particular extensions "
		echo "Which type of file list you want to see?"
		echo "1 .py"
		echo "2 .sh" 
		echo "3 .txt"
		echo "4 .js"
		echo "5 .html"
		echo "6 .css" 
		read -p "Select from 1-6 : " extension
		echo "-------------------OUTPUT-----------------------" 
		if [ $extension == 1 ]
		then
			echo ".py Files;" 
			ls *.py
		elif [ $extension == 2 ]
		then
			echo ".sh Files;"
			ls *.sh
		elif [ $extension == 3 ]
		then
			echo ".txt Files;" 
			ls *.txt
		
		elif [ $extension == 4 ]
		then
			echo ".js Files;" 
			ls *.js
		elif [ $extension == 5 ]
		then
			echo ".html Files;" 
			ls *.html
		elif [ $extension == 6 ]
		then
			echo ".css Files;" 
			ls *.css
		else
			echo "File Not Found" 
		fi
	
	elif [ $opt == 0 ]
	then
		tmp+=("$username has been logout")
		tmp+=("============================================================")
		tmp+=("")
		tmp+=("")
		printf "%s\n" "${tmp[@]}" > $file
		echo "Exit"
		break
	else
		echo ""
	fi
	$i=$($i+1)
	done

else
	echo "Invalid Username and Password"
fi




