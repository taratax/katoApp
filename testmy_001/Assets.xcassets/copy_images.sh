#!/bin/bash

# Source directory containing the images
SOURCE_DIR="$1"

# Destination directory to copy the images
DEST_DIR="$2"

# Check if both arguments are provided
if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then
  echo "Usage: $0 source_directory destination_directory"
  exit 1
fi

# Create the destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# List image files and copy them
find "$SOURCE_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" -o -iname "*.bmp" -o -iname "*.tiff" \) -exec cp {} "$DEST_DIR" \;

# Print a message indicating completion
echo "Image files copied from $SOURCE_DIR to $DEST_DIR"

