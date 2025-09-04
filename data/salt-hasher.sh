#!/bin/bash

INPUT="quiz_data.csv"
OUTPUT="salted-data.csv"

awk -F',' -v OFS=',' -v salt="$FIXED_SALT" '
BEGIN { srand() } 
NR==1 { print; next } # Skip header for the next script
{
    # If this is a new user - generate new salt
    if ($1 != prev_user) {
        prev_user = $1
        salt = sprintf("%05d", int(rand() * 100000))
    }

    # Add salt to the user identifier
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