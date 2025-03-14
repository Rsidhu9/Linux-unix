#!/bin/bash

# Utility script for basic system tasks

# Function to check disk space
check_disk() {
    df -h || { echo "Failed to check disk space"; exit 1; }
}

# Function to check if a file exists
check_file() {
    if [ -f "$1" ]; then
        echo "File '$1' exists."
        exit 0
    else
        echo "File '$1' does not exist."
        exit 1
    fi
}

# Main Logic
if [ "$1" == "disk" ]; then
    check_disk
elif [ "$1" == "file" ]; then
    check_file "$2"
else
    echo "Usage: $0 {disk|file <filename>}"
    exit 2
fi

