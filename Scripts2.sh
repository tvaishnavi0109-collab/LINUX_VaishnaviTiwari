#!/bin/bash
# Script 2: FOSS Package Inspector
# Name: Vaishnavi Tiwari
# Description: Checks if a package is installed and displays version and license.

PACKAGE="python3"

echo "Checking package: $PACKAGE"
echo "--------------------------------"

# Check if package exists
if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    echo ""

    dpkg -l | grep $PACKAGE

else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Package Description:"
echo "--------------------------------"

# Case statement
case $PACKAGE in
    apache2)
        echo "Apache: The web server that powers a large portion of the internet."
        ;;
    mysql-server)
        echo "MySQL: An open source relational database used by millions of applications."
        ;;
    vlc)
        echo "VLC: A powerful open source media player that supports almost every format."
        ;;
    firefox)
        echo "Firefox: A community driven web browser promoting an open internet."
        ;;
    python3)
        echo "Python: A versatile programming language widely used in development, AI, and cybersecurity."
        ;;
    *)
        echo "No description available."
        ;;
esac
