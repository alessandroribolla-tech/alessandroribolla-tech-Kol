---
name: run-settimanale
description: Esegue l'intero ciclo marketing settimanale IESS/iRES (concorrenza, piano editoriale, post, sponsorizzate, interazioni, compliance, riepilogo). Usa quando l'utente dice "run settimanale", "prepara la settimana", "lancia il marketing".
---

Lancia l'agente `orchestratore-marketing` con questo brief:

"Esegui il run settimanale completo per la settimana ISO corrente seguendo `workflows/settimanale.md`. Argomenti opzionali dell'utente: $ARGUMENTS. Alla fine riporta: percorso del riepilogo, 3 cose da approvare, limiti incontrati."

Se `$ARGUMENTS` contiene `--solo concorrenza|piano|post|ads|interazioni|newsletter`, esegui solo quella fase lanciando direttamente l'agente corrispondente.

Al termine mostra all'utente il contenuto di `output/riepilogo/<settimana>.md`.
