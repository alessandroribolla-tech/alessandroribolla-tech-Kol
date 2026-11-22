---
name: pubblica
description: Programma su Postiz i post con stato approvato della settimana, oppure legge le analytics dei canali. Usa per "programma i post approvati", "carica su Postiz", "analytics canali".
---

Prerequisito: CLI Postiz installato e autenticato (`postiz auth:status`; altrimenti `npm install -g postiz` e `postiz auth:login` da parte dell'utente). Senza Postiz, fermati e spiega come copiare i post manualmente.

Carica lo skill `postiz:postiz` e rispetta le sue quattro regole (upload media prima, settings da `integrations:settings`).

Modalità `analytics` (`$ARGUMENTS` contiene `analytics`): per ogni integrazione in `postiz integrations:list` esegui `analytics:platform -d 7` e salva il JSON in `inputs/interazioni/<settimana>/postiz-<identifier>.json`, poi lancia `community-manager`.

Modalità programmazione (default):
1. `SETT=$(date +%G-W%V)`. Seleziona in `output/post-social/$SETT/` solo i file con `stato: approvato` e `compliance: ok`. Elenca quelli esclusi e perché.
2. Per ciascuno: abbina `brand`+`canale` all'integrazione Postiz (mappa in `inputs/postiz-mappa.yaml`; se manca, chiedi all'utente di compilarla a partire da `integrations:list`), carica l'immagine da `output/post-social/$SETT/creativita/` se esiste, crea il post come **bozza** (`-t draft`) alla `data_pubblicazione` del frontmatter.
3. Aggiorna il frontmatter a `stato: programmato` con l'id Postiz. Mostra tabella post → id → data.
4. Non promuovere mai da draft a schedule senza richiesta esplicita dell'utente.
