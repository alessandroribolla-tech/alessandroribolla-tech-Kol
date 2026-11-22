---
name: piano-contenuti
description: Piano editoriale settimanale + testi dei post per IESS e iRES. Usa per "piano editoriale", "post della settimana", "contenuti social".
---

1. `SETT=$(date +%G-W%V)`; verifica che esista `output/report-concorrenza/$SETT.md` (altrimenti avvisa e procedi senza).
2. Lancia `strategist`: "Scrivi `output/piani-editoriali/$SETT.md`. Indicazioni utente: $ARGUMENTS."
3. Lancia `social-copywriter`: "Scrivi tutti i post del piano `output/piani-editoriali/$SETT.md` in `output/post-social/$SETT/`."
4. Lancia `compliance-reviewer` su `output/post-social/$SETT/`.
5. Lancia `creative-director` se l'utente lo chiede (`--grafiche`).
6. Riporta elenco file, quelli con `compliance: da_verificare` e materiali mancanti.
