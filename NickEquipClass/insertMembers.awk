BEGIN {
  groupId = 84868
  groupTypeId = 52
  roleId = 1
  status = 1

  print "INSERT INTO GroupMember ("
  print "    GroupId, GroupTypeId, PersonId, GroupRoleId, GroupMemberStatus,"
  print "    IsSystem, CreatedDateTime, ModifiedDateTime, [Guid]"
  print ")"
  print "SELECT"
  print "    " groupId ", " groupTypeId ", v.PersonId, " roleId ", " status ","
  print "    0, GETDATE(), GETDATE(), NEWID()"
  print "FROM ("
  print "    VALUES"
}

function trim(s) {
  gsub(/^[ \t]+|[ \t]+$/, "", s)
  gsub(/\r/, "", s)
  return s
}

{
  id = trim($0)
  if (id == "") next
  if (id !~ /^[0-9]+$/) next   # safety: skip non-numeric

  rows[++n] = "    (" id ")"
}

END {
  for (i = 1; i <= n; i++) {
    if (i < n) print rows[i] ","
    else print rows[i]
  }

  print ") AS v(PersonId)"
  print "WHERE NOT EXISTS ("
  print "    SELECT 1 FROM GroupMember gm"
  print "    WHERE gm.GroupId = " groupId " AND gm.PersonId = v.PersonId"
  print ");"
}
