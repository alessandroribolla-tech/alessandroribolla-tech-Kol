---
name: review-interazioni
description: Analizza commenti, messaggi e metriche dei canali IESS/iRES e prepara le risposte. Usa per "interazioni", "commenti", "cosa ci hanno scritto", "rispondi ai follower".
---

`SETT=$(date +%G-W%V)`. Controlla `inputs/interazioni/$SETT/` e `postiz auth:status` (se il CLI esiste). Lancia `community-manager`: "Scrivi `output/interazioni/$SETT.md` dalle fonti disponibili. Note utente: $ARGUMENTS." Mostra: interazioni ad alta priorità, lead per la rete vendita, risposte da approvare.
