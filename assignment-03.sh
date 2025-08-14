# Write a script to copy a file from a source path to a destination path provided as arguments.
# Handle cases where source or destination are invalid.
#!/bin/bash


FILE=/backup/conf
SOURCE=/backup/
DEST=/tmp

echo "enter your copy path:"
read path

if [ "$path" -eq "$SOURCE" ]; then
    echo "source path is valid enter destination_path:"
    read dest_path

    if [ "$dest_path" -eq "$DEST" ]; then
        echo "destination path is valid copying your file..."
        sudo cp "$FILE" "$DEST"
    fi
    else
        echo "destination path is invalid"
else
    echo "source path is invalid"