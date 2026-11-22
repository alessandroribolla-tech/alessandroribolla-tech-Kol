---
name: report-mensile
description: Report KPI mensile e revisione della strategia decisa dal capo. Usa per "report mensile", "KPI del mese", "revisione strategia".
---

`MESE=$(date -d "last month" +%Y-%m)` (o il mese in $ARGUMENTS). Lancia `capo-marketing`: "Esegui il ciclo mensile per $MESE: `risultati` produce `output/risultati/$MESE.md`, `comunicazione` propone la revisione, tu decidi e aggiorni `strategy/strategia-comunicazione.md`." Mostra cruscotto KPI e decisioni.
