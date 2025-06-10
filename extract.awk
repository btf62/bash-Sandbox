awk -F',' 'BEGIN {
    OFS=", ";
    print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email)\nVALUES"
}
NR > 1 {
    gsub(/'\''/, "''", $1);  # sanitize apostrophes
    gsub(/'\''/, "''", $2);
    gsub(/'\''/, "''", $3);
    gsub(/'\''/, "''", $4);
    printf("(%d, '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\''),\n", NR, $1, $2, $3, $4)
}'