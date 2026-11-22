---
name: run-settimanale
description: Esegue l'intero ciclo marketing settimanale IESS/iRES guidato dal capo-marketing (brief e priorità, concorrenza, risultati, comunicazione, contenuti, sito, controllo, riepilogo). Usa per "run settimanale", "prepara la settimana", "fai il punto", "lancia il marketing".
---

Lancia l'agente `capo-marketing` con questo brief: "Esegui il ciclo settimanale completo per la settimana ISO corrente seguendo `workflows/settimanale.md`. Indicazioni dell'utente: $ARGUMENTS. Alla fine riporta percorso del riepilogo, decisioni prese, 5 cose da approvare, limiti incontrati."

Se `$ARGUMENTS` contiene `--solo <concorrenza|comunicazione|contenuti|risultati|sito>`, il capo delega solo quello specialista.

Al termine mostra all'utente `output/riepilogo/<settimana>.md`.
