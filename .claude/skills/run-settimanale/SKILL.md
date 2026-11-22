---
name: run-settimanale
description: Esegue l'intero ciclo marketing settimanale IESS/iRES/Performa guidato dal capo-marketing (brief e priorità; concorrenza, risultati; comunicazione, performance, internazionale; contenuti, sito; compliance; riepilogo). Usa per "run settimanale", "prepara la settimana", "fai il punto", "lancia il marketing".
---

Lancia l'agente `capo-marketing` con questo brief: "Esegui il ciclo settimanale completo per la settimana ISO corrente seguendo `workflows/settimanale.md`. Indicazioni dell'utente: $ARGUMENTS. Alla fine riporta percorso del riepilogo, decisioni prese, 5 cose da approvare, limiti incontrati."

Se `$ARGUMENTS` contiene `--solo <concorrenza|risultati|comunicazione|performance|internazionale|contenuti|sito>`, il capo delega solo quello specialista più la verifica di `compliance-regolatorio`.

Al termine mostra all'utente `output/riepilogo/<settimana>.md`.
