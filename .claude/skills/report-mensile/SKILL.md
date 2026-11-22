---
name: report-mensile
description: Report KPI mensile e revisione della strategia. Usa per "report mensile", "KPI del mese", "revisione strategia".
---

`MESE=$(date -d "last month" +%Y-%m)` (o il mese in $ARGUMENTS). Lancia `analyst`: "Scrivi `output/report-mensili/$MESE.md`." Poi lancia `strategist`: "Aggiungi la sezione Revisione $MESE a `strategy/strategia-comunicazione.md` leggendo il report mensile." Poi lancia `web-content` per i 2 contenuti sito del mese se il piano li prevede. Mostra cruscotto KPI e 5 raccomandazioni.
