---
name: contenuti
description: Post social, newsletter, script video e creatività dal piano editoriale. Usa per "scrivi i post", "newsletter", "script reel", "grafiche".
---

`SETT=$(bash scripts/nuova_settimana.sh)`. Verifica che esista `output/piani-editoriali/$SETT.md` (altrimenti lancia prima `comunicazione`). Lancia `contenuti`: "Produci i contenuti del piano in `output/post-social/$SETT/`; newsletter (`--newsletter [lista]`), grafiche (`--grafiche`) o richiesta specifica: $ARGUMENTS." Poi lancia `compliance-regolatorio` sui file in `output/post-social/$SETT/` e `output/newsletter/` della settimana. Mostra elenco file, esiti compliance, materiali mancanti.
