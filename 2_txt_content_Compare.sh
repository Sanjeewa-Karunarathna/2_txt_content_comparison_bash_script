#!/bin/bash

# Check if exactly two arguments (file names) are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

# Check if the files exist
if [ ! -f "$1" ]; then
    echo "File '$1' not found!"
    exit 1
fi

if [ ! -f "$2" ]; then
    echo "File '$2' not found!"
    exit 1
fi

# Compare the files using 'diff' and highlight differences with 'colordiff'
echo "Comparing '$1' and '$2':"
diff -u "$1" "$2" | colordiff
