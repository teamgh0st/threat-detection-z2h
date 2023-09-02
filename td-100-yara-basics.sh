#!/bin/bash

# Check if two arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <filename> <outputfile>"
  exit 1
fi

# Input file name and output file name
filename="$1"
outputfile="$2"

# Check if the file exists
if [ ! -f "$filename" ]; then
  echo "File not found: $filename"
  exit 1
fi

# Get file size and path
file_size=$(stat -c %s "$filename")
file_path=$(realpath "$filename")

# Calculate the hashes (MD5, SHA-1, SHA-256)
md5_hash=$(md5sum "$filename" | awk '{print $1}')
sha1_hash=$(sha1sum "$filename" | awk '{print $1}')
sha256_hash=$(sha256sum "$filename" | awk '{print $1}')

# Write the formatted output to the specified output file
echo "File Size: $file_size" > "$outputfile"
echo "File Name: $file_path" >> "$outputfile"
echo "MD5: $md5_hash" >> "$outputfile"
echo "SHA1: $sha1_hash" >> "$outputfile"
echo "SHA256: $sha256_hash" >> "$outputfile"

echo "File information collected. Data can be viewed at $outputfile"
