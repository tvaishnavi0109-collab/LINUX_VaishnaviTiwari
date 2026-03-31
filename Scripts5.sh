#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Name: Vaishnavi Tiwari
# Description: Generates a personalized open source philosophy statement.

# Note: An alias could be used to run this script quickly, e.g.
# alias manifesto="./script5.sh"

echo "Open Source Manifesto Generator"
echo "--------------------------------"

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date "+%d %B %Y")
USER=$(whoami)

OUTPUT="manifesto_$USER.txt"

echo "--------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I believe in the power of open source software." >> $OUTPUT
echo "Tools like $TOOL show how collaboration can create powerful technology." >> $OUTPUT
echo "To me, freedom means $FREEDOM in the world of software." >> $OUTPUT
echo "In the future, I hope to build and share $BUILD with the global community." >> $OUTPUT
echo "Open knowledge and transparency help innovation grow." >> $OUTPUT
echo "--------------------------------" >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
