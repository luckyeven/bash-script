#!/bin/bash
# File name: accountManager.sh
# Author: @luckeyeven shifengsong@hotmail.com
#
# This script helps to manage user account on linux system.
sleeptime=10

display_menu() {
    clear
    echo 'Program to Manage User Accounts.'
    echo 'Author: @luckeyeven'
    echo 
    echo 'A. Create User Account'
    echo 'B. Delete User Account'
    echo 'C. Change Spplementary Group for a User Account'
    echo 'D. Change Initial Group for a User Account'
    echo 'E. Change default login shell for a User Account'
    echo 'F. Change account expiration date for a User Account'
    echo 'Q. Quit'
}

add_user() {

useradd  $username -d /home/$userhome -m -s /bin/$usershell
sleep $sleeptime
}

del_user() {
userdel -r $username
sleep $sleeptime
}

add_usertogroup(){
usermod -a -G $groupname $username
sleep $sleeptime
}

ch_groupname(){
usermod -g $groupname $username
sleep $sleeptime
}

ch_shell(){
usermod -s /bin/$shellname $username
sleep $sleeptime
}

ch_expdata(){
usermod -e $expdata $username
sleep $sleeptime
}

choice=n

while [ $choice != "Q" ] && [ $choice != "q" ]
do
    display_menu
    read choice
    if [ $choice = 'A' ] || [ $choice = 'a' ]
        then
	echo "Adding user...."
	echo "User Name:"
	read username
	echo "User Home:"
	read userhome
	echo "User defult shell:"
	read usershell
	add_user $username $userhome $usershell
    
    elif [ $choice = 'B' ] || [ $choice = 'b' ]
        then
	echo "Deleting user..."
        echo "User Name:"
	read username
	del_user $username


    elif [ $choice = 'C' ] || [ $choice = 'c' ]
        then
        echo "Adding a user to a supplementary group..."
	echo "User name:"
	read username
	echo "Group name"
	read groupname
	add_usertogroup $groupname $username
    elif [ $choice = 'D' ] || [ $choice = 'd' ]
        then
        echo "Changing initial group name for the user ..."
	echo "User name:"
	read username
	echo "Group name"
	read groupname
	ch_groupname $groupname $username
    elif [ $choice = 'E' ] || [ $choice = 'e' ]
        then
        echo "Changing initial group name for the user ..."
	echo "User name:"
	read username
	echo "Change shell to:"
	read shellname
	ch_shell $shellname $username
    elif [ $choice = 'F' ] || [ $choice = 'f' ]
        then
	echo "Changing the expiry date of the user ..."
	echo "User name:"
	read username
	echo "Expiration data: (YYYY-MM-DD)"
	read expdata
	ch_expdata $expdata $username
	echo "choice a"
    elif [ $choice != 'Q' ] || [ $choice != 'q' ]
	then
	echo "Exit..."
	sleep 3
    fi
done

