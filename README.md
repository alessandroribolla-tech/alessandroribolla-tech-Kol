# Marketing OS – IESS Group / iRES

Sistema di marketing automatizzato con agenti Claude Code per **IESS Group** (IESS, Geass, iRES, Multysystem, Performa) e **iRES**.
Ogni settimana gli agenti monitorano la concorrenza, propongono il piano editoriale, scrivono post, newsletter e contenuti sito, suggeriscono sponsorizzate e remarketing, analizzano le interazioni e preparano le risposte. Un essere umano approva prima di pubblicare.

## Avvio rapido
```
/run-settimanale                 # ciclo completo: il capo decide, i nove specialisti eseguono
/report-concorrenza [--tutti]    # monitoraggio concorrenti
/risultati                       # interazioni, risposte, lead, metriche
/comunicazione                   # piano editoriale, messaggi, brief campagne
/performance [--mensile]         # sponsorizzate, remarketing, budget, SEO, tracciamento
/internazionale [--newsletter|--kit X]  # versioni in lingua, newsletter e kit distributori
/contenuti [--newsletter] [--grafiche]  # post, newsletter, script video, grafiche
/sito-cataloghi-packaging <richiesta>   # articolo, landing, catalogo, packaging
/lead [--sequenza X]             # lead: qualifica, assegnazione, bozze, follow-up, sequenze
/compliance [file]               # verifica indipendente e registro claim
/report-mensile                  # KPI, campagne, revisione strategia
/pubblica [analytics]            # Postiz: programma i post approvati / legge analytics
/nuovo-competitor <nome>         # aggiunge un concorrente
```
Stato approvazioni: `scripts/stato.sh [YYYY-Wnn]`.

## Struttura
- `CLAUDE.md` regole per gli agenti · `brand/` brief, tono, audience, canali, compliance · `competitors/` registro · `strategy/` strategia, pilastri, KPI
- `.claude/agents/` 10 agenti · `.claude/skills/` 13 comandi · `templates/` modelli · `workflows/` runbook
- `inputs/` materiali dall'azienda · `output/` deliverable per settimana ISO

## I dieci agenti
| Fase | Agente | Compito |
|---|---|---|
| decide | **capo-marketing** | priorità, brief, delega, decisioni, riepilogo, registro decisioni |
| osservare | monitor-concorrenza | ~75 concorrenti in 3 tier per gruppo e area |
| osservare | risultati | interazioni e risposte, lead, metriche, KPI mensile |
| progettare | comunicazione | strategia, messaggi chiave, piano editoriale (fiere, corsi IDEA pubblicabili), brief campagne e newsletter |
| progettare | performance-seo-ads | sponsorizzate, remarketing, budget, SEO, tracciamento, report campagne |
| progettare | internazionale-distributori | versioni EN/ES/DE/FR/PL, newsletter e kit distributori, mercati esteri |
| produrre | contenuti | post, caroselli, script video, newsletter IT, grafiche |
| produrre | sito-cataloghi-packaging | sito, cataloghi e media kit, packaging ed etichette |
| chiudere | crm-lead | lead da social, email, form, eShop, corsi, fiere: qualifica, assegnazione, bozze, sequenze, registro e follow-up |
| controllare | compliance-regolatorio | gate indipendente MDR/GDPR/policy, registro claim approvati |

## Proposta di crescita del team e stack strumenti
Vedi `docs/team-agenti-e-strumenti.md`: valutazione (10 agenti attivi; restano proposti video, laboratori-performa, pazienti; education separata in IDEA), schema agenti per IESS Group, iRES e Performa, elenco completo di skill, plugin e connettori con priorità, roadmap di attivazione.

## Automazione
Il run settimanale può essere lanciato a mano (`/run-settimanale`) o da una **attività pianificata** di Claude Code (lunedì mattina) che esegue il ciclo, committa in `output/` e fa push. Vedi `workflows/settimanale.md`.

## Prima configurazione (da fare una volta)
1. Validare `brand/brand-brief.md` e `brand/compliance.md` con direzione e regolatorio.
2. Far compilare a IDEA `inputs/idea/calendario-corsi.md`; compilare `inputs/materiali/lanci.md`.
3. Indicare piattaforma newsletter e account ads in `brand/canali.md`.
4. (Opzionale) collegare Postiz: `npm install -g postiz && postiz auth:login`, poi compilare `inputs/postiz-mappa.yaml`.
5. Lanciare `/report-concorrenza --tutti` per il primo censimento dei concorrenti (verifica URL e handle).
