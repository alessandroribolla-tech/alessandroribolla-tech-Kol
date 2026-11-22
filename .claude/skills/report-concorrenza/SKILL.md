---
name: report-concorrenza
description: Report settimanale sui concorrenti (siti, social pubblici, news, ads). Usa per "report concorrenza", "cosa fanno i competitor", "monitoraggio concorrenti".
---

1. `SETT=$(bash scripts/nuova_settimana.sh)`.
2. Lancia `monitor-concorrenza`: "Produci `output/report-concorrenza/$SETT.md` secondo la profondità per tier (tier 3 incluso se $ARGUMENTS contiene `--tutti`). Concorrenti specifici richiesti: $ARGUMENTS."
3. Mostra sintesi esecutiva e copertura.
