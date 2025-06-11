#!/usr/bin/env gawk -f

###############################################################################
# build-inserts.awk
#
# Purpose: Convert a CSV export of Equip class signups into a SQL script
#          that inserts sanitized data into a Rock RMS temp table.
#
# Usage:   ./build-inserts.awk input.csv > output.sql
#
# Fields:  RecordNumber, FirstName, LastName, PhoneNumber, Email, Submitted, Token
###############################################################################

# Escape single quotes for SQL (e.g., O'Neil → O''Neil)
function escape_quotes(str,    result, i, ch) {
    result = ""
    for (i = 1; i <= length(str); i++) {
        ch = substr(str, i, 1)
        if (ch == sprintf("%c", 39))  # ASCII 39 = single quote
            result = result "''"
        else
            result = result ch
    }
    return result
}

# BEGIN block runs before any input is read
BEGIN {
    FS = ","          # Set input CSV delimiter
    OFS = ", "        # Set output field separator
    print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email, Submitted, Token)\nVALUES"
}

# Skip header (NR > 1); process each data row
NR > 1 {
    # Sanitize and escape each field
    fname  = escape_quotes($1)
    lname  = escape_quotes($2)
    phone  = escape_quotes($3)
    email  = escape_quotes($4)
    rawdate = $5
    token  = escape_quotes($6)

    # Strip carriage returns from token field (^M on macOS)
    gsub(/\r/, "", token)

    # Convert Submitted date from M/D/YYYY H:MM:SS to SQL DATETIME format
    split(rawdate, dt, " ")
    split(dt[1], d, "/")
    year  = d[3]
    month = (length(d[1]) == 1 ? "0" d[1] : d[1])
    day   = (length(d[2]) == 1 ? "0" d[2] : d[2])
    split(dt[2], t, ":")
    hour = (length(t[1]) == 1 ? "0" t[1] : t[1])
    datetime = year "-" month "-" day "T" hour ":" t[2] ":" t[3]

    # Output row as SQL values line
    printf("(%d, '%s', '%s', '%s', '%s', CAST('%s' AS DATETIME), '%s'),\n",
           NR, fname, lname, phone, email, datetime, token)
}