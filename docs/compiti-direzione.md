# I tuoi compiti (umano nel ciclo)

Gli agenti producono bozze; tu decidi, fornisci i dati che loro non possono avere e pubblichi. In media: 2-3 ore la prima settimana, poi circa 1 ora e mezza a settimana più mezza giornata al mese.

## Una volta sola (prima settimana)
1. **Validare i documenti di brand**: `brand/brand-brief.md`, `brand/profili/*.md`, `brand/tone-of-voice.md`, `brand/audiences.md`. Correggere i punti marcati [verificare].
2. **Validare la compliance col regolatorio**: `brand/compliance.md` e `brand/claim-approvati.md` (portare i 9 claim iniziali ad approvato o respinto, aggiungere fonti).
3. **Compilare gli input**: `inputs/materiali/calendario-corsi.md`, `inputs/materiali/lanci.md`, `inputs/materiali/kol.md`, `inputs/distributori.md`; indicare piattaforma newsletter, account ads e CRM in `brand/canali.md`.
4. **Caricare materiali**: foto/video con liberatoria in `inputs/materiali/foto-video/` (suffisso `_ok`), casi clinici con consenso in `inputs/materiali/casi/`.
5. **Collegare gli strumenti**: Postiz (`npm install -g postiz && postiz auth:login`, poi `inputs/postiz-mappa.yaml`), Canva Pro con brand kit, Firecrawl e Bright Data autorizzati; far installare Meta Pixel, LinkedIn Insight Tag e GA4 con consenso cookie; sistemare il certificato TLS di geass.it; creare la pagina LinkedIn iRES.
6. **Confermare i concorrenti**: chiarire Kalodont, Medsolaris e Dentcon (nome esatto, sito) in `competitors/competitors.yaml`; spostare di tier chi vuoi.
7. **Creare il branch `main`** dal branch di lavoro attuale (o dirmi di farlo).

## Ogni settimana
| Giorno | Compito | Dove | Tempo |
|---|---|---|---|
| Domenica o lunedì presto | Scrivere priorità, eventi, vincoli, cose da non fare | `inputs/direzione.md` | 10 min |
| Lunedì | Leggere il riepilogo del capo e le decisioni; approvare o rimandare i file (`stato: approvato` nel frontmatter; su `da_verificare` decidere; `bloccato` non si tocca) | `output/riepilogo/<SETT>.md`, `output/riepilogo/<SETT>-compliance.md`, file in `output/` | 30-45 min |
| Lunedì | Validare o respingere i claim nuovi proposti dal revisore (o girarli al regolatorio) | `brand/claim-approvati.md` | 10 min |
| Martedì | Programmare i post approvati (`/pubblica` su Postiz o copia manuale) e passare i brief visivi al grafico | `output/post-social/<SETT>/` | 20 min |
| Mercoledì | Attivare le sponsorizzate approvate con il budget deciso | `output/sponsorizzate/<SETT>.md` → Meta/LinkedIn/Google | 20 min |
| Venerdì | Esportare interazioni e metriche (Meta Business Suite, LinkedIn, YouTube) e lanciare `/risultati`; inviare le risposte approvate | `inputs/interazioni/<SETT>/` | 20 min |
| Settimane pari | Approvare la newsletter e inviarla dalla piattaforma email | `output/newsletter/` | 15 min |

## Ogni mese (primo lunedì)
1. Depositare gli export in `inputs/analytics/<YYYY-MM>/` (GA4, Search Console, newsletter, ads, eShop).
2. Lanciare `/report-mensile`, leggere KPI e revisione della strategia, decidere i cambi (pilastri, budget, Paesi prioritari, tier concorrenti).
3. Aggiornare `inputs/materiali/calendario-corsi.md` e `lanci.md` per il mese successivo.
4. Approvare la newsletter distributori EN e i contenuti sito del mese.
5. Chiedere al regolatorio la revisione dei claim `in_verifica`.

## Su richiesta
- Un lancio prodotto: compilare `inputs/materiali/lanci.md` con claim approvati e materiali, poi `/comunicazione`, `/internazionale --kit <prodotto>`, `/sito-cataloghi-packaging`.
- Una fiera o un corso nuovo: aggiornare calendario e `inputs/materiali/kol.md`, poi `/education`.
- Un concorrente nuovo: `/nuovo-competitor <nome>`.
- Un dubbio su un testo: `/compliance <file>`.

## Cosa non devi fare
Non devi scrivere post, report o piani: li chiedi. Non devi rispondere ai commenti da zero: approvi le bozze. Non devi monitorare i concorrenti: leggi il report del lunedì.
