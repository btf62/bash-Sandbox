awk -F',' '
BEGIN {
    OFS = ", ";
    print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email)\nVALUES"
}

NR > 1 {
    # Copy and escape each field safely for SQL
    fname = $1; gsub(/\047/, "''", fname);       # FirstName
    lname = $2; gsub(/\047/, "''", lname);       # LastName with apostrophes
    phone = $3; gsub(/\047/, "''", phone);       # Phone
    email = $4; gsub(/\047/, "''", email);       # Email
    printf("(%d, '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\''),\n",
           NR, fname, lname, phone, email)
}
'