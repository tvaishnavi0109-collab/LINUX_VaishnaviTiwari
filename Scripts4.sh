#!/bin/bash
# Script 4: Log File Analyzer
# Name: Vaishnavi Tiwari
# Description: Reads a log file and counts occurrences of a keyword.

LOGFILE=$1
KEYWORD=${2:-error}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: Log file not found."
    exit 1
fi

echo "Analyzing log file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "--------------------------------"

while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo "--------------------------------"
echo "Total occurrences of '$KEYWORD': $COUNT"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
