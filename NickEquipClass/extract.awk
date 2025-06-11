awk -F',' '
BEGIN {
    OFS = ", ";
    print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email, Submitted, Token)\nVALUES"
}

NR > 1 {
    # Copy and escape each field safely for SQL
    fname = $1; gsub(/\047/, "''", fname);       # FirstName
    lname = $2; gsub(/\047/, "''", lname);       # LastName with apostrophes
    phone = $3; gsub(/\047/, "''", phone);       # Phone
    email = $4; gsub(/\047/, "''", email);       # Email
    submitted_raw = $5; gsub(/\047/, "''", submitted_raw);
    token = $6; gsub(/\r/, "", token); gsub(/\047/, "''", token);  # Token and strip ^M

    # Convert Submitted field to SQL format (M/D/YYYY → YYYY-MM-DD)
    split(submitted_raw, dt, " ");
    split(dt[1], d, "/");
    year = d[3];
    month = (length(d[1]) == 1 ? "0" d[1] : d[1]);
    day = (length(d[2]) == 1 ? "0" d[2] : d[2]);
    datetime = year "-" month "-" day "T" dt[2];

    printf("(%d, '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\'', CAST('\''%s'\'' AS DATETIME), '\''%s'\''),\n",
           NR, fname, lname, phone, email, datetime, token)
}
'