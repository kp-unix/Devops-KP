#Create a script that searches for a specific string within a file or directory recursively.

#!/bin/bash

# Check if exactly two arguments are given
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <search_string> <file_or_directory>"
    exit 1
fi

search_string="$1"
path="$2"

# Check if path exists
if [ ! -e "$path" ]; then
    echo "Error: '$path' does not exist."
    exit 1
fi

# If path is a file, search only in that file
if [ -f "$path" ]; then
    echo "Searching in file: $path"
    grep -n --color=always "$search_string" "$path" || echo "No matches found."
# If path is a directory, search recursively
elif [ -d "$path" ]; then
    echo "Searching in directory: $path"
    grep -rn --color=always "$search_string" "$path" 2>/dev/null || echo "No matches found."
else
    echo "Error: '$path' is neither a file nor a directory."
    exit 1
fi
