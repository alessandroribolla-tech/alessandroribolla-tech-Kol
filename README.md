# Marketing OS – IESS Group / iRES

Sistema di marketing automatizzato con agenti Claude Code per **IESS Group** (IESS, Geass, iRES, Multysystem, Performa) e **iRES**.
Ogni settimana gli agenti monitorano la concorrenza, propongono il piano editoriale, scrivono post, newsletter e contenuti sito, suggeriscono sponsorizzate e remarketing, analizzano le interazioni e preparano le risposte. Un essere umano approva prima di pubblicare.

## Avvio rapido
```
/run-settimanale                 # ciclo completo: il capo decide, i cinque specialisti eseguono
/report-concorrenza [--tutti]    # solo monitoraggio concorrenti
/comunicazione                   # piano editoriale, messaggi, sponsorizzate e remarketing
/contenuti [--newsletter] [--grafiche]  # post, newsletter, script video, grafiche
/risultati                       # interazioni, risposte, lead, metriche
/sito-cataloghi-packaging <richiesta>   # articolo, landing, catalogo, packaging
/report-mensile                  # KPI del mese e revisione strategia
/pubblica [analytics]            # programma su Postiz i post approvati / legge analytics
/nuovo-competitor <nome>         # aggiunge un concorrente
```
Stato approvazioni: `scripts/stato.sh [YYYY-Wnn]`.

## Struttura
- `CLAUDE.md` regole per gli agenti · `brand/` brief, tono, audience, canali, compliance · `competitors/` registro · `strategy/` strategia, pilastri, KPI
- `.claude/agents/` 6 agenti · `.claude/skills/` 9 comandi · `templates/` modelli · `workflows/` runbook
- `inputs/` materiali dall'azienda · `output/` deliverable per settimana ISO

## I sei agenti
| Agente | Compito |
|---|---|
| **capo-marketing** | decide: priorità, brief, delega, controllo qualità e compliance, decisioni, riepilogo |
| monitor-concorrenza | monitora ~75 concorrenti in 3 tier per gruppo e area (siti, LinkedIn, YouTube, news, Ad Library) |
| comunicazione | crea la comunicazione: strategia, messaggi chiave, piano editoriale, campagne, sponsorizzate e remarketing |
| contenuti | crea i contenuti: post, caroselli, script video, newsletter IT/EN, grafiche (Canva) |
| risultati | monitora i risultati: interazioni e risposte, lead per la rete vendita, metriche, report KPI mensile |
| sito-cataloghi-packaging | sito e SEO, cataloghi e media kit, packaging ed etichette (brief e checklist regolatoria) |

## Automazione
Il run settimanale può essere lanciato a mano (`/run-settimanale`) o da una **attività pianificata** di Claude Code (lunedì mattina) che esegue il ciclo, committa in `output/` e fa push. Vedi `workflows/settimanale.md`.

## Prima configurazione (da fare una volta)
1. Validare `brand/brand-brief.md` e `brand/compliance.md` con direzione e regolatorio.
2. Compilare `inputs/materiali/calendario-corsi.md` e `inputs/materiali/lanci.md`.
3. Indicare piattaforma newsletter e account ads in `brand/canali.md`.
4. (Opzionale) collegare Postiz: `npm install -g postiz && postiz auth:login`, poi compilare `inputs/postiz-mappa.yaml`.
5. Lanciare `/report-concorrenza --tutti` per il primo censimento dei concorrenti (verifica URL e handle).
