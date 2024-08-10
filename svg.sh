#!/bin/bash

# Function to print SVG pattern
print_svg() {
    echo "    _________  "
    echo "   / _______/  "
    echo "  / /______    "
    echo "  |______  \   "
    echo "   ______|  |  "
    echo "  |_______ /   "
    echo
}

# Function to update PHP
update_php() {
    echo "Select PHP version to install:"
    echo "1) PHP 7.4"
    echo "2) PHP 8.0"
    echo "3) PHP 8.1"
    echo "4) PHP 8.2"
    echo "5) PHP 8.3"
    echo "6) Exit"

    read -p "Enter your choice [1-6]: " php_choice

    case $php_choice in
        1)
            sudo apt-get update
            sudo apt-get install php7.4
            echo "PHP 7.4 has been installed."
            ;;
        2)
            sudo apt-get update
            sudo apt-get install php8.0
            echo "PHP 8.0 has been installed."
            ;;
        3)
            sudo apt-get update
            sudo apt-get install php8.1
            echo "PHP 8.1 has been installed."
            ;;
        4)
            sudo apt-get update
            sudo apt-get install php8.2
            echo "PHP 8.2 has been installed."
            ;;
        5)
            sudo apt-get update
            sudo apt-get install php8.3
            echo "PHP 8.3 has been installed."
            ;;
        6)
            echo "Exiting PHP installation."
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
}

# Function to update Composer
update_composer() {
    echo "Select Composer version to install:"
    echo "1) Composer 1.x"
    echo "2) Composer 2.x"
    echo "3) Exit"

    read -p "Enter your choice [1-3]: " composer_choice

    case $composer_choice in
        1)
            sudo apt-get update
            sudo apt-get install composer=1.*
            echo "Composer 1.x has been installed."
            ;;
        2)
            sudo apt-get update
            sudo apt-get install composer=2.*
            echo "Composer 2.x has been installed."
            ;;
        3)
            echo "Exiting Composer installation."
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
}


# ====================================================
print_svg
echo 
echo 

# Main script
echo "Welcome To Shubham's Script..."
echo 
echo 
echo "Select Operating System:"
echo "1) Ubuntu"
echo "2) Exit"

read -p "Enter your choice [1-2]: " os_choice

case $os_choice in
    1)
        echo "Operating System: Ubuntu"
        echo "Select Software to Install:"
        echo "1) PHP"
        echo "2) Composer"
        echo "3) Exit"

        read -p "Enter your choice [1-3]: " software_choice

        case $software_choice in
            1)
                update_php
                ;;
            2)
                update_composer
                ;;
            3)
                echo "Exiting software installation."
                ;;
            *)
                echo "Invalid option."
                ;;
        esac
        ;;
    2)
        echo "Exiting the script."
        ;;
    *)
        echo "Invalid option."
        ;;
esac
