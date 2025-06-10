BEGIN {
    print "INSERT INTO GroupMember (GroupId, PersonId, GroupRoleId, GroupMemberStatus)"
    print "SELECT 79270, v.PersonId, 1, 1"
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
}