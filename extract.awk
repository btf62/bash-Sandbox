awk -F',' 'BEGIN {
    OFS=", ";
    print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email, Comments, Submitted, Token)\nVALUES"
}
NR > 1 {
    gsub(/'\''/, "''", $1);  # sanitize apostrophes
    gsub(/'\''/, "''", $2);
    gsub(/'\''/, "''", $3);
    gsub(/'\''/, "''", $4);
    gsub(/'\''/, "''", $5);
    gsub(/'\''/, "''", $6);
    gsub(/'\''/, "''", $7);
    gsub(/\r/, "", $NF);     # strip ^M from end
    printf("(%d, '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\'', '\''%s'\''),\n", NR, $1, $2, $3, $4, $5, $6, $7)
}'