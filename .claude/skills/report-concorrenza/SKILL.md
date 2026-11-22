---
name: report-concorrenza
description: Report settimanale sui concorrenti (siti, social pubblici, news, ads). Usa per "report concorrenza", "cosa fanno i competitor", "monitoraggio concorrenti".
---

1. `SETT=$(date +%G-W%V)`; esegui `scripts/nuova_settimana.sh`.
2. Lancia l'agente `monitor-concorrenza`: "Produci `output/report-concorrenza/$SETT.md` per tutti i concorrenti tier 1 e 2 di `competitors/competitors.yaml` (tier 3 se $ARGUMENTS contiene `--tutti`). Concorrenti specifici richiesti: $ARGUMENTS."
3. Mostra all'utente la sintesi esecutiva e la sezione copertura del report.
