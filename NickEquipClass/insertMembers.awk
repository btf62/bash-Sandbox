awk -F',' 'BEGIN {
    print "INSERT INTO GroupMember ("
    print "    GroupId, GroupTypeId, PersonId, GroupRoleId, GroupMemberStatus,"
    print "    IsSystem, CreatedDateTime, ModifiedDateTime, [Guid]"
    print ")"
    print "SELECT"
    print "    79270, 52, v.PersonId, 1, 1,"
    print "    0, GETDATE(), GETDATE(), NEWID()"
    print "FROM ("
    print "    VALUES"
}

NR > 1 && $2 ~ /^[0-9]+$/ {
    if (count++ > 0) {
        print "   ,(" $2 ")"
    } else {
        print "    (" $2 ")"
    }
}

END {
    print ") AS v(PersonId)"
    print "WHERE NOT EXISTS ("
    print "    SELECT 1 FROM GroupMember gm"
    print "    WHERE gm.GroupId = 79270 AND gm.PersonId = v.PersonId"
    print ");"
}'