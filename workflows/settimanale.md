# Runbook settimanale

| Quando | Chi | Cosa | Output |
|---|---|---|---|
| Lun 07:00 | agenti (automatico o `/run-settimanale`) | il capo fissa priorità e brief; osservare, progettare, produrre con i nove specialisti; compliance indipendente; decisioni e riepilogo | `output/*/<SETT>*`, `output/riepilogo/<SETT>-brief.md`, `output/riepilogo/<SETT>.md` |
| Lun-Mar | marketing + direzione iRES | lettura riepilogo e decisioni del capo, modifiche, `stato: approvato` sui file ok | frontmatter aggiornato |
| Mar | marketing | `/pubblica` (bozze in Postiz) o copia manuale; grafiche (`/contenuti --grafiche`) | post programmati |
| Mer | marketing | attivazione sponsorizzate approvate (manuale sulle piattaforme) | campagne |
| Ven | marketing | export interazioni in `inputs/interazioni/<SETT>/` → `/risultati`; invio risposte approvate | `output/risultati/<SETT>.md` |
| Settimane pari | marketing | `/contenuti --newsletter` → approvazione → invio dalla piattaforma email | `output/newsletter/` |

## I dieci agenti e l'ordine di esecuzione
```
capo-marketing (decide: brief e priorità)
├─ OSSERVARE   monitor-concorrenza · risultati · education-kol            (in parallelo)
├─ PROGETTARE  comunicazione → performance-seo-ads · internazionale-distributori
├─ PRODURRE    contenuti · sito-cataloghi-packaging · internazionale (lingue) · education (landing, recap)
├─ CONTROLLARE compliance-regolatorio (frontmatter compliance, registro claim)
└─ capo-marketing (decisioni, riepilogo, registro decisioni, commit)
```
Indicazioni della direzione per la settimana: scriverle in `inputs/direzione.md` prima del run (il capo le legge per prime).

## Input attesi dall'azienda (cartella `inputs/`)
- `inputs/direzione.md`: priorità, eventi, vincoli di budget, cose da non fare.
- `inputs/materiali/calendario-corsi.md`: date, titoli, relatori, sedi, link iscrizione. Aggiornare mensilmente.
- `inputs/materiali/lanci.md`: novità prodotto, date, claim approvati, esigenze di catalogo/packaging.
- `inputs/materiali/kol.md`: roster relatori e opinion leader con consensi.
- `inputs/distributori.md`: distributori per Paese, lingue, priorità.
- `brand/claim-approvati.md`: validare i claim proposti dagli agenti (stato → approvato/respinto).
- `inputs/materiali/foto-video/`: asset con liberatorie (suffisso `_ok`).
- `inputs/materiali/casi/`: casi clinici con consenso documentato.
- `inputs/interazioni/<SETT>/`: export Meta Business Suite, LinkedIn, YouTube.
- `inputs/analytics/<YYYY-MM>/`: export GA4, newsletter, ads, eShop.

## Definizione di "fatto"
Un run è completo quando esistono: brief del capo, report concorrenza, report risultati (anche "nessun dato"), agenda education, piano editoriale con messaggi chiave, piano sponsorizzate e brief SEO, almeno 6 post IT (3 IESS, 3 iRES) più le versioni in lingua previste, contenuti sito previsti dal piano, riepilogo compliance con claim proposti, riepilogo con decisioni e registro decisioni aggiornato, commit.
