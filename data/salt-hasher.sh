#!/bin/bash

INPUT="quiz_data.csv"
OUTPUT="salted-data.csv"
FIXED_SALT="13377"

awk -F',' -v OFS=',' -v salt="$FIXED_SALT" '
NR==1 { print; next } # Skip the header
{
    # Add salt to the first column
    salted_identifier = salt $1

    # Compute SHA-256 hash into CMD
    cmd = "printf \"" salted_identifier "\" | sha256sum"
    cmd | getline raw_output
    close(cmd)

    # Extract the hash from the output
    split(raw_output, output_parts, " ")
    final_hash = output_parts[1]

    # Replace the first column with the salted hash
    $1 = salt final_hash

    print
}' "$INPUT" > "$OUTPUT"