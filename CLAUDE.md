# Marketing OS – IESS Group / iRES

Questo repository è il "sistema operativo" di marketing di **IESS Group** (brand: IESS, Geass, iRES, Multysystem, Performa) e in particolare di **iRES** (produzione svizzera, Mendrisio).
È pensato per essere gestito da agenti Claude Code, con un essere umano che approva prima di ogni pubblicazione.

Lingua di lavoro: **italiano**. Contenuti per canali internazionali iRES: inglese (indicato esplicitamente nel brief).

## Regola zero
Nulla viene pubblicato, inviato o speso senza approvazione umana. Gli agenti producono bozze in `output/`; la pubblicazione (Postiz, newsletter, ads) avviene solo su file con `stato: approvato` nel frontmatter.

## Mappa del repository
| Cartella | Contenuto |
|---|---|
| `brand/` | Brand brief, tone of voice, audience, canali, compliance, `brand/claim-approvati.md` (registro dei claim: usare solo quelli approvati, citando l'id) e `brand/profili/` (IESS, iRES, Performa: ogni agente carica il profilo del brand su cui lavora). **Leggere sempre prima di scrivere contenuti.** |
| `competitors/competitors.yaml` | Registro concorrenti monitorati (siti, social, tier). |
| `strategy/` | Strategia di comunicazione, pilastri di contenuto, KPI. |
| `workflows/` | Runbook del ciclo settimanale e mensile. |
| `templates/` | Modelli per ogni deliverable. |
| `inputs/` | Materiale fornito dall'azienda: export interazioni social, analytics, listini, foto, calendario corsi. |
| `output/` | Tutto ciò che gli agenti producono, per settimana ISO (`YYYY-Wnn`); `output/riepilogo/decisioni.md` è il registro delle decisioni del capo. |
| `.claude/agents/` | Dieci agenti: `capo-marketing` (decide) e nove specialisti (vedi "Chi fa cosa"). |
| `.claude/skills/` | Comandi operativi (`/run-settimanale`, `/report-concorrenza`, `/risultati`, `/education`, `/comunicazione`, `/performance`, `/internazionale`, `/contenuti`, `/sito-cataloghi-packaging`, `/compliance`, `/report-mensile`, `/pubblica`, `/nuovo-competitor`). |
| `scripts/` | Utility (nuova settimana, stato approvazioni). |

## Chi fa cosa
| Agente | Ruolo |
|---|---|
| `capo-marketing` | **Decide.** Priorità e brief della settimana, delega ai nove specialisti, legge gli esiti di compliance, decide, riepiloga, tiene il registro decisioni. Unico che propone all'approvazione umana. |
| `monitor-concorrenza` | Osserva i concorrenti (`competitors/competitors.yaml`) e produce il report settimanale. |
| `risultati` | Osserva i risultati: interazioni e bozze di risposta, lead, metriche settimanali, report KPI mensile. |
| `education-kol` | Osserva e progetta education: agenda corsi, promozione, landing e DEM, recap, programma KOL, fiere e congressi. |
| `comunicazione` | Progetta la comunicazione: strategia, messaggi chiave, piano editoriale, brief campagne e newsletter, candidati al budget, slot in lingua. |
| `performance-seo-ads` | Progetta e misura la performance: sponsorizzate, remarketing, budget, SEO, tracciamento, report campagne. |
| `internazionale-distributori` | Progetta e produce per i mercati iRES: versioni EN/ES/DE/FR/PL, newsletter distributori, kit distributore, ascolto mercati. |
| `contenuti` | Produce i contenuti IT: post, caroselli, script video, newsletter, risposte pronte, grafiche. |
| `sito-cataloghi-packaging` | Produce sito (contenuti), cataloghi e media kit, brief e checklist packaging ed etichette. |
| `compliance-regolatorio` | Controlla, indipendente: ogni contenuto contro MDR, pubblicità al pubblico, GDPR, policy piattaforme; gestisce `brand/claim-approvati.md`. |

## Ciclo operativo
- **Settimanale (lunedì)**: `/run-settimanale` → il capo decide; osservare (concorrenza, risultati, education); progettare (comunicazione, performance, internazionale); produrre (contenuti, sito, lingue, landing corsi); controllare (compliance); riepilogo. Vedi `workflows/settimanale.md`.
- **Quindicinale**: newsletter (`/contenuti --newsletter`).
- **Mensile (primo lunedì)**: `/report-mensile` → KPI, report campagne e SEO, newsletter distributori, revisione strategia decisa dal capo, contenuti sito, cataloghi/packaging se previsti.

## Convenzioni
- Settimana ISO: `date +%G-W%V` (es. `2026-W48`). Ogni run crea `output/<area>/<settimana>/` o `output/<area>/<settimana>.md`.
- Ogni deliverable ha frontmatter YAML: `brand`, `canale`, `settimana`, `stato` (`bozza` | `in_revisione` | `approvato` | `pubblicato`), `compliance` (`ok` | `da_verificare`).
- Le fonti dei report concorrenza vanno sempre citate con URL e data di rilevazione.
- Mai inventare dati (follower, prezzi, date corsi): se non verificabili scrivere `n.d.` e segnalarlo.
- Gli agenti **non** rispondono mai direttamente sui social: preparano risposte in `output/risultati/`.
- Indicazioni della direzione per la settimana in `inputs/direzione.md`: il capo le legge per prime.
- Commit alla fine di ogni run: `marketing(<settimana>): <cosa>`.

## Strumenti disponibili e limiti
- Ricerca/lettura web: WebSearch, WebFetch e, quando il connettore è presente nella sessione, Firecrawl (siti, LinkedIn pubblico, YouTube, news di settore come Odontoiatria33, Infodent, Dental Tribune).
- Instagram e Facebook dei concorrenti: spesso non leggibili via scraping. Usare la ricerca web, le pagine "news" dei siti, YouTube e LinkedIn; per i dati dei propri canali usare gli export in `inputs/interazioni/` oppure Postiz (`/pubblica` con `analytics`).
- Creatività: Canva MCP (se collegato) o brief visivi per il grafico in `templates/post-social.md`.
- Pubblicazione: CLI Postiz (opzionale, vedi skill `pubblica`). Senza Postiz, i post approvati si copiano a mano in Meta Business Suite / LinkedIn.

## Compliance (riassunto, dettagli in `brand/compliance.md`)
Gli impianti dentali sono dispositivi medici. Comunicazione promozionale rivolta a professionisti: ok con claim supportati da evidenze. Comunicazione a pazienti: solo informativa/istituzionale, nessun claim clinico, nessun prezzo o promozione su dispositivi. Chi produce un contenuto lo autoverifica con la checklist e usa solo claim del registro; `compliance-regolatorio` verifica in modo indipendente; il `capo-marketing` decide. In caso di disaccordo prevale l'esito più restrittivo.
