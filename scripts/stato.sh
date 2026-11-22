#!/usr/bin/env bash
# Mostra lo stato di approvazione e compliance dei deliverable della settimana (default: corrente).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SETT="${1:-$(date +%G-W%V)}"
printf "%-70s %-14s %-16s\n" "FILE" "STATO" "COMPLIANCE"
{ grep -rl "^settimana: $SETT" "$ROOT/output" 2>/dev/null || true; } | sort | while read -r f; do
  stato=$(grep -m1 '^stato:' "$f" | sed 's/stato: *//')
  comp=$(grep -m1 '^compliance:' "$f" | sed 's/compliance: *//')
  printf "%-70s %-14s %-16s\n" "${f#$ROOT/}" "${stato:-n.d.}" "${comp:--}"
done
