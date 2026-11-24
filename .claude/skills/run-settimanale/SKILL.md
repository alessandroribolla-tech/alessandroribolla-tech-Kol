---
name: run-settimanale
description: Esegue l'intero ciclo marketing settimanale IESS/iRES/Performa guidato dal capo-marketing (brief e priorità; concorrenza, risultati; comunicazione, performance, internazionale; contenuti, sito; compliance; riepilogo). Usa per "run settimanale", "prepara la settimana", "fai il punto", "lancia il marketing".
---

**Assumi tu, in questa sessione, il ruolo del capo-marketing**: leggi `.claude/agents/capo-marketing.md` ed esegui la sua procedura passo per passo, lanciando gli specialisti con il tool Agent (`subagent_type` = nome dell'agente). Non lanciare `capo-marketing` come subagente: un subagente non può delegare ad altri agenti né, nelle sessioni pianificate, usare i connettori; il risultato sarebbe un run fatto da un solo agente senza web.

Brief: "Esegui il ciclo settimanale completo per la settimana ISO corrente seguendo `workflows/settimanale.md`. Indicazioni dell'utente: $ARGUMENTS. Alla fine riporta percorso del riepilogo, decisioni prese, 5 cose da approvare, limiti incontrati."

Se `$ARGUMENTS` contiene `--solo <concorrenza|risultati|comunicazione|performance|internazionale|contenuti|sito>`, lanci solo quello specialista più la verifica di `compliance-regolatorio`.

Al termine mostra all'utente `output/riepilogo/<settimana>.md`.
