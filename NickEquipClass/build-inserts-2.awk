BEGIN {
  FS = ","
  print "INSERT INTO #TempEquipImport (RecordNumber, FirstName, LastName, PhoneNumber, Email)"
  print "VALUES"
}

NR == 1 { next }  # skip header

function trim(s) {
  gsub(/^[ \t]+|[ \t]+$/, "", s)
  return s
}

function sql_escape(s) {
  s = trim(s)
  gsub(/\r/, "", s)     # remove CR
  gsub(/`/, "'", s)     # normalize backtick -> apostrophe (optional but helpful)
  gsub(/'/, "''", s)    # SQL escape apostrophe
  return s
}

{
  fn = sql_escape($1)
  ln = sql_escape($2)
  ph = sql_escape($3)
  em = sql_escape($4)

  rows[++n] = sprintf("(%d, '%s','%s','%s','%s')", NR-1, fn, ln, ph, em)
}

END {
  for (i = 1; i <= n; i++) {
    if (i < n) print rows[i] ","
    else print rows[i] ";"
  }
}