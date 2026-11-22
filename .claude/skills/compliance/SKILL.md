---
name: compliance
description: Verifica indipendente di compliance su contenuti, ads, cataloghi, etichette; gestione del registro claim. Usa per "verifica compliance", "si può dire?", "controlla prima di pubblicare", "registro claim".
---

`SETT=$(bash scripts/nuova_settimana.sh)`. Lancia `compliance-regolatorio`: "Verifica i file indicati in `$ARGUMENTS` (default: tutti i file della settimana $SETT in output/), aggiorna i frontmatter, scrivi `output/riepilogo/$SETT-compliance.md` e proponi i claim nuovi in `brand/claim-approvati.md`." Mostra tabella esiti e claim da far validare.
