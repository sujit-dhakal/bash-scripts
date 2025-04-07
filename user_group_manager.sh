#!/bin/bash

# Function to add user
add_user(){
    echo "Enter the username to add:"
    read username
    sudo useradd $username
    echo "User $username added."
}

# Function to delete a user
delete_user(){
    echo "Enter the username to delete:"
    read username
    sudo userdel -r $username
    echo "User $username deleted."
}

# Function to list users
list_users(){
    echo "List of all users"
    getent passwd | cut -d: -f1
}

# Function to add group
add_group(){
    echo "Enter the group name to add:"
    read groupname
    sudo groupadd $groupname
    echo "Group $groupname added."
}

# Function to delete group
delete_group(){
    echo "Enter the group name to delete:"
    read groupname
    sudo groupdel $groupname
    echo "Group $groupname deleted."
}

# Function to list group
list_groups(){
    echo "List of all groups"
    getent group | cut -d: -f1
}

# Main menu for options

while true; do
    echo "Choose an option:"
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Add Group"
    echo "5. Delete Group"
    echo "6. List Groups"
    echo "7. Exit"

    read option

    case $option in
        1)
            add_user
            ;;
        2)
            delete_user
            ;;
        3)
            list_users
            ;;
        4)
            add_group
            ;;
        5)
            delete_group
            ;;
        6)
            list_groups
            ;;
        7)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid options, please try again"
            ;;
    esac
done