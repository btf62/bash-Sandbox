awk -F',' 'BEGIN {
    OFS=", ";
    print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email, Submitted, Token)\nVALUES"
}
NR > 1 {
    # Sanitize apostrophes in all 7 fields
    for (i = 1; i <= 7; i++) {
        gsub(/'\''/, "''", $i);
    }

    # Strip carriage return from final field
    gsub(/\r/, "", $7);

    # Convert Submitted field ($6) from M/D/YYYY H:MM:SS to YYYY-MM-DD HH:MM:SS
    split($6, dt, " ");
    split(dt[1], d, "/");
    year = d[3];
    month = (length(d[1]) == 1 ? "0" d[1] : d[1]);
    day = (length(d[2]) == 1 ? "0" d[2] : d[2]);
    datetime = year "-" month "-" day "T" dt[2];

    # Output SQL line
    printf("(%d, '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\'', CAST('\''%s'\'' AS DATETIME), '\''%s'\''),\n",
           NR, $1, $2, $3, $4, datetime, $7)
}'