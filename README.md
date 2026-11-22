# Marketing OS – IESS Group / iRES

Sistema di marketing automatizzato con agenti Claude Code per **IESS Group** (IESS, Geass, iRES, Multysystem, Performa) e **iRES**.
Ogni settimana gli agenti monitorano la concorrenza, propongono il piano editoriale, scrivono post, newsletter e contenuti sito, suggeriscono sponsorizzate e remarketing, analizzano le interazioni e preparano le risposte. Un essere umano approva prima di pubblicare.

## Avvio rapido
```
/run-settimanale            # ciclo completo della settimana
/report-concorrenza         # solo monitoraggio concorrenti
/piano-contenuti            # piano editoriale + post
/newsletter [--en|--corsi]  # newsletter IT, distributori EN o DEM corsi
/piano-sponsorizzate        # suggerimenti ads e remarketing
/review-interazioni         # analisi interazioni e bozze di risposta
/report-mensile             # KPI e revisione strategia
/pubblica [analytics]       # programma su Postiz i post approvati / legge analytics
/nuovo-competitor <nome>    # aggiunge un concorrente
/contenuto-sito <richiesta> # articolo, landing, pagina
```
Stato approvazioni: `scripts/stato.sh [YYYY-Wnn]`.

## Struttura
- `CLAUDE.md` regole per gli agenti · `brand/` brief, tono, audience, canali, compliance · `competitors/` registro · `strategy/` strategia, pilastri, KPI
- `.claude/agents/` 11 agenti specializzati · `.claude/skills/` 10 comandi · `templates/` modelli · `workflows/` runbook
- `inputs/` materiali dall'azienda · `output/` deliverable per settimana ISO

## Agenti
| Agente | Compito |
|---|---|
| orchestratore-marketing | coordina il ciclo settimanale e scrive il riepilogo |
| monitor-concorrenza | report settimanale su 25 concorrenti (siti, LinkedIn, YouTube, news, Ad Library) |
| strategist | piano editoriale multicanale; revisione mensile della strategia |
| social-copywriter | post per LinkedIn, Instagram, Facebook, YouTube con brief visivo |
| newsletter-writer | newsletter quindicinale IT e mensile distributori EN |
| web-content | articoli SEO, pagine prodotto, landing corsi |
| ads-planner | sponsorizzate e remarketing con budget e pubblici |
| community-manager | analisi interazioni, priorità, bozze di risposta, lead per la rete vendita |
| analyst | report KPI mensile |
| compliance-reviewer | checklist dispositivi medici, GDPR, policy piattaforme |
| creative-director | creatività via Canva o brief per il grafico |

## Automazione
Il run settimanale può essere lanciato a mano (`/run-settimanale`) o da una **attività pianificata** di Claude Code (lunedì mattina) che esegue il ciclo, committa in `output/` e fa push. Vedi `workflows/settimanale.md`.

## Prima configurazione (da fare una volta)
1. Validare `brand/brand-brief.md` e `brand/compliance.md` con direzione e regolatorio.
2. Compilare `inputs/materiali/calendario-corsi.md` e `inputs/materiali/lanci.md`.
3. Indicare piattaforma newsletter e account ads in `brand/canali.md`.
4. (Opzionale) collegare Postiz: `npm install -g postiz && postiz auth:login`, poi compilare `inputs/postiz-mappa.yaml`.
5. Lanciare `/report-concorrenza --tutti` per il primo censimento dei concorrenti (verifica URL e handle).
