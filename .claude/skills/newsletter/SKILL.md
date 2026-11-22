---
name: newsletter
description: Prepara la newsletter quindicinale IESS Update (IT) o la mensile distributori iRES (EN). Usa per "newsletter", "DEM", "email corsi".
---

`SETT=$(date +%G-W%V)`. Lancia `newsletter-writer`: "Prepara la newsletter per la lista indicata in `$ARGUMENTS` (default: `clienti-it`; `--en` per `distributori-en`; `--corsi` per DEM corsi) in `output/newsletter/$SETT-<lista>.md`, usando piano editoriale e report concorrenza della settimana se esistono." Poi lancia `compliance-reviewer` sul file e mostra oggetto, struttura ed esito compliance.
