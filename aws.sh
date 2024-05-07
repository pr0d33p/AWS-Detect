#!/bin/bash

if [[ $1 == "-l" ]]; then
  list_file=$2
else
  echo "Error: missing -l flag and list file"
  exit 1
fi

output_file="aws_records.txt"

if [[ $3 == "-o" ]]; then
  output_file=$4
fi

while IFS= read -r hostname; do
  domain=$(dig +short "$hostname")

  if echo "$domain" | grep -q "amazonaws.com."; then
    message="$hostname belongs to AWS Services"
  else
    message="$hostname does not belong to AWS Services"
  fi

  echo "$message" >> "$output_file"
done < "$list_file"

