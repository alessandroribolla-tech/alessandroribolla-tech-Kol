---
name: pubblica
description: Programma su Postiz i post approvati della settimana oppure legge le analytics dei canali. Usa per "programma i post approvati", "carica su Postiz", "analytics canali".
---

Prerequisito: CLI Postiz autenticato (`postiz auth:status`; altrimenti l'utente esegue `npm install -g postiz && postiz auth:login`). Senza Postiz fermati e spiega la copia manuale.
Carica lo skill `postiz:postiz` e rispetta le sue regole (upload media prima, settings da `integrations:settings`).

Modalità `analytics`: per ogni integrazione in `postiz integrations:list` esegui `analytics:platform -d 7`, salva in `inputs/interazioni/<settimana>/postiz-<identifier>.json`, poi lancia `risultati`.

Modalità programmazione (default):
1. `SETT=$(date +%G-W%V)`. Seleziona in `output/post-social/$SETT/` solo file con `stato: approvato` e `compliance: ok`; elenca gli esclusi e perché.
2. Abbina `brand`+`canale` all'integrazione via `inputs/postiz-mappa.yaml` (se vuota, chiedi all'utente di compilarla da `integrations:list`); carica l'immagine da `creativita/` se esiste; crea il post come **bozza** (`-t draft`) alla `data_pubblicazione`.
3. Aggiorna il frontmatter a `stato: programmato` con l'id Postiz. Mostra tabella post → id → data.
4. Mai promuovere da draft a schedule senza richiesta esplicita.
