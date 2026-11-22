---
name: internazionale
description: Versioni in lingua dei contenuti, newsletter distributori EN, kit distributore, ascolto mercati esteri iRES. Usa per "in inglese", "distributori", "kit distributore", "mercato tedesco/spagnolo", "newsletter EN".
---

`SETT=$(bash scripts/nuova_settimana.sh)`. Lancia `internazionale-distributori`: "Richiesta: $ARGUMENTS (default: versioni in lingua degli slot del piano `output/piani-editoriali/$SETT.md` marcati con lingua diversa da IT, in `output/internazionale/$SETT/`; `--newsletter` per la newsletter distributori del mese; `--kit <prodotto>` per un kit)." Poi `compliance-regolatorio` sui file prodotti. Mostra elenco file per lingua e punti da verificare per Paese.
