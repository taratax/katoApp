#!/bin/bash

# Step 1: Get the list of folder names without the '.imageset' part
folder_names=$(find . -type d -name "*.imageset" | sed 's/\.imageset$//')

# Step 2: Use the new list to find files with matching names
for name in $folder_names; do
  basename=$(basename "$name")
  find . -type f -name "$basename.*"
done

