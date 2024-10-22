#!/bin/bash

# Log into the jump server
echo "Please login through jump server"

# Pass the user creation commands directly to the remote server using SSH
ssh steve@stapp02 << 'EOF'
    echo "To create a new user: "
    read -p "Enter username: " uname
    read -p "Enter UID: " uid
    read -p "Enter user's new directory: " dir

    # Create the account
    sudo useradd "$uname" -d "$dir" -u "$uid"

    if [ $? -eq 0 ]; then
        echo "User $uname created successfully!"
    else
        echo "Failed to create the user."
    fi
EOF
