#!/bin/bash

# Initial Variables
rec_path="$HOME/StreamloopRec" # Here you can modify the variable for specifying the folder where StreamLoop will save its recordings to.
loopcount=10200
myvalue=0

# Get URL input
read -p "Enter URL: " URL

# Get Filename input
read -p "Enter Filename: " NAME

# Main loop
while [ $loopcount -gt 0 ]; do

# Get System Date and Time
dt=$(date +"%Y%m%d%H%M%S")

# Extract date and time components
YY="${dt:2:2}"
YYYY="${dt:0:4}"
MM="${dt:4:2}"
DD="${dt:6:2}"
HH="${dt:8:2}"
Min="${dt:10:2}"
Sec="${dt:12:2}"

# Create timestamp strings
datestamp="${YYYY}${MM}${DD}"
timestamp="${HH}${Min}${Sec}"
fullstamp="${YYYY}-${MM}-${DD}_${HH}-${Min}-${Sec}"

# Increment counter
((myvalue++))

# Create directory if it doesn't exist
mkdir -p "${rec_path}/${NAME}"
pathoutput="${rec_path}/${NAME}"
# Start the stream
streamlink "$URL" best -o "${pathoutput}/${datestamp}-${timestamp}.ts"

# Alternative command (commented out)
# streamlink "$URL" best -o "AJ_Archivos/${NAME}_${myvalue}.ts"

# Decrement loop counter
((loopcount--))
done

# Pause at the end (equivalent to Windows pause)
read -p "Press Enter to exit..."

