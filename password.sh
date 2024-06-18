#!/bin/bash

check_password_strength() {
    password=$1

    # Minimum length check
    if [ ${#password} -lt 8 ]; then
        echo "Password is too short (minimum length is 8 characters)."
        return
    fi

    # Check for presence of uppercase, lowercase, digits, and special characters
    if ! [[ $password =~ [[:upper:]] ]]; then
        echo "Password should contain at least one uppercase letter."
        return
    fi

    if ! [[ $password =~ [[:lower:]] ]]; then
        echo "Password should contain at least one lowercase letter."
        return
    fi

    if ! [[ $password =~ [[:digit:]] ]]; then
        echo "Password should contain at least one digit."
        return
    fi

    if ! [[ $password =~ [!@#$%^&*()\-_=+{};:,<.>\\|/?~] ]]; then
        echo "Password should contain at least one special character (!@#$%^&*()-_=+{};:,<.>\\|/?~)."
        return
    fi

    # Additional checks (optional)
    common_passwords=("password" "123456" "qwerty" "letmein")  # Example common passwords list
    for common_pwd in "${common_passwords[@]}"; do
        if [ "${password,,}" = "$common_pwd" ]; then
            echo "Password is too common and easy to guess."
            return
        fi
    done

    # If all checks pass
    echo "Password is strong."
}

# Function to print ASCII art
print_ascii_art() {
    cat << "EOF"
.__ .__. __. __..  . _, .__ .__       __..___..__ .___.__ .  ..___.
[__)[__](__ (__ |  ||.| [__)|  \ ___ (__   |  [__)[__ [ __|__|  |  
|   |  |.__).__)|/\||_| |  \|__/     .__)  |  |  \[___[_./|  |  |  

Developed by Perthlis
EOF
}

# Main script starts here
print_ascii_art

while true; do
    read -p "Enter your password: " password

    # Check password strength
    strength=$(check_password_strength "$password")
    echo "$strength"

    # Break out of the loop if the password is strong
    if [ "$strength" = "Password is strong." ]; then
        break
    fi
done
