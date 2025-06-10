#!/bin/bash

# Enable debug mode by passing 'debug' as the first argument: ./move_apple_files.sh debug
DEBUG_MODE=false
if [[ "$1" == "debug" ]]; then
    DEBUG_MODE=true
    echo "DEBUG MODE ENABLED: No files will be moved, only mv commands will be displayed."
fi

# Define source and destination base directories
SOURCE_DIR="/Users/bradfiles/Downloads"
DEST_DIR="/Users/bradfiles/Dropbox/Docs/Finances/Credit Cards/Apple Card"
LOG_FILE="$DEST_DIR/move_apple_files.log"

# Start logging
echo "=== File Move Log - $(date) ===" >> "$LOG_FILE"

# Function to map month names to two-digit numbers
get_month_number() {
    case "$1" in
        January) echo "01" ;;
        February) echo "02" ;;
        March) echo "03" ;;
        April) echo "04" ;;
        May) echo "05" ;;
        June) echo "06" ;;
        July) echo "07" ;;
        August) echo "08" ;;
        September) echo "09" ;;
        October) echo "10" ;;
        November) echo "11" ;;
        December) echo "12" ;;
        *) echo "00" ;; # Fallback for unexpected input
    esac
}

# Loop through each relevant file in the Downloads folder
for file in "$SOURCE_DIR"/Apple\ Card\ *\ -\ *.pdf "$SOURCE_DIR"/Apple\ Card\ *\ -\ *.csv; do
    # Extract filename
    filename=$(basename "$file")

    # Match both "Apple Card Statement - <Month> <Year>.pdf" and "Apple Card Transactions - <Month> <Year>.csv"
    if [[ "$filename" =~ Apple\ Card\ (Statement|Transactions)\ -\ ([A-Za-z]+)\ ([0-9]{4})\.(pdf|csv) ]]; then
        type="${BASH_REMATCH[1]}"  # "Statement" or "Transactions"
        month_name="${BASH_REMATCH[2]}"
        year="${BASH_REMATCH[3]}"
        extension="${BASH_REMATCH[4]}"  # "pdf" or "csv"

        # Convert month name to two-digit number
        month_number=$(get_month_number "$month_name")

        # Define new filename format
        new_filename="AppleCard-${year}-${month_number}.${extension}"

        # Define destination folder
        dest_folder="$DEST_DIR/$year"

        # Ensure destination directory exists
        mkdir -p "$dest_folder"

        # Define the move command
        move_command="mv \"$file\" \"$dest_folder/$new_filename\""

        # Log and execute based on DEBUG_MODE
        if $DEBUG_MODE; then
            echo "[DEBUG] $move_command"
        else
            eval $move_command
            echo "Moved: $file -> $dest_folder/$new_filename" | tee -a "$LOG_FILE"
        fi
    else
        echo "Skipping: $filename (does not match expected pattern)" | tee -a "$LOG_FILE"
    fi
done

echo "File move and rename process completed." | tee -a "$LOG_FILE"
