#!/bin/bash

# Usage: ./script.sh /path/to/folder "your-command" output.txt

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <folder> <command> <output_file>"
    exit 1
fi

folder="$1"
prefix_command="$2"
output_file="$3"

if [ ! -d "$folder" ]; then
    echo "Error: Folder '$folder' does not exist."
    exit 1
fi

true > "$output_file"

find "$folder" -type f | while read -r filepath; do
    echo "$prefix_command \"$filepath\"" >> "$output_file"
done

echo "Done. Output written to $output_file"
