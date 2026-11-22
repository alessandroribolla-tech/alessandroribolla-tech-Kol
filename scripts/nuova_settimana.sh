#!/usr/bin/env bash
# Crea le cartelle di output della settimana ISO corrente (o di quella passata come argomento, es. 2026-W48).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SETT="${1:-$(date +%G-W%V)}"
mkdir -p "$ROOT/output/post-social/$SETT/creativita" "$ROOT/inputs/interazioni/$SETT"
for d in report-concorrenza piani-editoriali newsletter sito cataloghi packaging sponsorizzate risultati internazionale performance lead riepilogo; do mkdir -p "$ROOT/output/$d"; done
echo "$SETT"
