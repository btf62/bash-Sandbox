#!/usr/bin/env bash
set -euo pipefail

CSV="RamseyPlusCleanList.csv"

awk -F',' '
NR==1 { next }
{
  for (i=1;i<=5;i++) gsub(/^[ \t]+|[ \t]+$/, "", $i)
  for (i=1;i<=5;i++) gsub(/\047/, "\047\047", $i)

  split($1, d, "/")
  yyyy = 2000 + d[3]
  mm = sprintf("%02d", d[1])
  dd = sprintf("%02d", d[2])
  iso = yyyy "-" mm "-" dd

  printf "(\x27%s\x27,\x27%s\x27,\x27%s\x27,\x27%s\x27,\x27%s\x27),\n", iso, $2, $3, $4, $5
}
' "$CSV"