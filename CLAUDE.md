# Marketing OS – IESS Group / iRES

Questo repository è il "sistema operativo" di marketing di **IESS Group** (brand: IESS, Geass, iRES, Multysystem, Performa) e in particolare di **iRES** (produzione svizzera, Mendrisio).
È pensato per essere gestito da agenti Claude Code, con un essere umano che approva prima di ogni pubblicazione.

Lingua di lavoro: **italiano**. Contenuti per canali internazionali iRES: inglese (indicato esplicitamente nel brief).

## Regola zero
Nulla viene pubblicato, inviato o speso senza approvazione umana. Gli agenti producono bozze in `output/`; la pubblicazione (Postiz, newsletter, ads) avviene solo su file con `stato: approvato` nel frontmatter.

## Mappa del repository
| Cartella | Contenuto |
|---|---|
| `brand/` | Brand brief, tone of voice, audience, canali, regole di compliance. **Leggere sempre prima di scrivere contenuti.** |
| `competitors/competitors.yaml` | Registro concorrenti monitorati (siti, social, tier). |
| `strategy/` | Strategia di comunicazione, pilastri di contenuto, KPI. |
| `workflows/` | Runbook del ciclo settimanale e mensile. |
| `templates/` | Modelli per ogni deliverable. |
| `inputs/` | Materiale fornito dall'azienda: export interazioni social, analytics, listini, foto, calendario corsi. |
| `output/` | Tutto ciò che gli agenti producono, per settimana ISO (`YYYY-Wnn`). |
| `.claude/agents/` | Agenti specializzati (subagent). |
| `.claude/skills/` | Comandi operativi (`/run-settimanale`, `/report-concorrenza`, …). |
| `scripts/` | Utility (nuova settimana, stato approvazioni). |

## Ciclo operativo
- **Settimanale (lunedì)**: `/run-settimanale` → report concorrenza, piano editoriale, post social, suggerimenti sponsorizzate, review interazioni. Vedi `workflows/settimanale.md`.
- **Quindicinale**: newsletter (`/newsletter`).
- **Mensile (primo lunedì)**: `/report-mensile` → KPI, revisione strategia, contenuti sito.

## Convenzioni
- Settimana ISO: `date +%G-W%V` (es. `2026-W48`). Ogni run crea `output/<area>/<settimana>/` o `output/<area>/<settimana>.md`.
- Ogni deliverable ha frontmatter YAML: `brand`, `canale`, `settimana`, `stato` (`bozza` | `in_revisione` | `approvato` | `pubblicato`), `compliance` (`ok` | `da_verificare`).
- Le fonti dei report concorrenza vanno sempre citate con URL e data di rilevazione.
- Mai inventare dati (follower, prezzi, date corsi): se non verificabili scrivere `n.d.` e segnalarlo.
- Gli agenti **non** rispondono mai direttamente sui social: preparano risposte in `output/interazioni/`.
- Commit alla fine di ogni run: `marketing(<settimana>): <cosa>`.

## Strumenti disponibili e limiti
- Ricerca/lettura web: WebSearch, WebFetch e, quando il connettore è presente nella sessione, Firecrawl (siti, LinkedIn pubblico, YouTube, news di settore come Odontoiatria33, Infodent, Dental Tribune).
- Instagram e Facebook dei concorrenti: spesso non leggibili via scraping. Usare la ricerca web, le pagine "news" dei siti, YouTube e LinkedIn; per i dati dei propri canali usare gli export in `inputs/interazioni/` oppure Postiz (`/pubblica` con `analytics`).
- Creatività: Canva MCP (se collegato) o brief visivi per il grafico in `templates/post-social.md`.
- Pubblicazione: CLI Postiz (opzionale, vedi skill `pubblica`). Senza Postiz, i post approvati si copiano a mano in Meta Business Suite / LinkedIn.

## Compliance (riassunto, dettagli in `brand/compliance.md`)
Gli impianti dentali sono dispositivi medici. Comunicazione promozionale rivolta a professionisti: ok con claim supportati da evidenze. Comunicazione a pazienti: solo informativa/istituzionale, nessun claim clinico, nessun prezzo o promozione su dispositivi. L'agente `compliance-reviewer` deve passare su ogni contenuto prima di `approvato`.
