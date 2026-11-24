# Runbook settimanale

| Quando | Chi | Cosa | Output |
|---|---|---|---|
| Lun 07:00 | agenti (automatico o `/run-settimanale`) | il capo fissa priorità e brief; osservare, progettare, produrre, chiudere con i nove specialisti; compliance indipendente; decisioni e riepilogo | `output/*/<SETT>*`, `output/riepilogo/<SETT>-brief.md`, `output/riepilogo/<SETT>.md` |
| Lun-Mar | marketing + direzione iRES | lettura riepilogo e decisioni del capo, modifiche, `stato: approvato` sui file ok | frontmatter aggiornato |
| Mar | marketing | `/pubblica` (bozze in Postiz) o copia manuale; grafiche (`/contenuti --grafiche`) | post programmati |
| Mer | marketing | attivazione sponsorizzate approvate (manuale sulle piattaforme) | campagne |
| Ven | marketing | export interazioni in `inputs/interazioni/<SETT>/` → `/risultati` → `/lead`; invio risposte approvate; conferma assegnazioni agli agenti | `output/risultati/<SETT>.md`, `output/lead/<SETT>.md` |
| Settimane pari | marketing | `/contenuti --newsletter` → approvazione → invio dalla piattaforma email | `output/newsletter/` |

## I dieci agenti e l'ordine di esecuzione
```
capo-marketing = sessione principale (decide: brief e priorità; lancia gli specialisti con Agent)
├─ OSSERVARE   monitor-concorrenza · risultati                            (in parallelo; il capo legge i corsi IDEA)
├─ PROGETTARE  comunicazione → performance-seo-ads · internazionale-distributori
├─ PRODURRE    contenuti · sito-cataloghi-packaging · internazionale (lingue)
├─ CHIUDERE    crm-lead (lead da risultati, Gmail, form, eShop, fiere → assegnazioni, bozze, follow-up)
├─ CONTROLLARE compliance-regolatorio (frontmatter compliance, registro claim)
└─ capo-marketing (decisioni, riepilogo, registro decisioni, commit)
```
Indicazioni della direzione per la settimana: scriverle in `inputs/direzione.md` prima del run (il capo le legge per prime).

## Input attesi dall'azienda (cartella `inputs/`)
- `inputs/direzione.md`: priorità, eventi, vincoli di budget, cose da non fare.
- `inputs/idea/calendario-corsi.md` (compilato da IDEA): i corsi da pubblicare, con tutti i dati. Il marketing non aggiunge nulla.
- `inputs/materiali/lanci.md`: novità prodotto, date, claim approvati, esigenze di catalogo/packaging.
- `inputs/distributori.md`: distributori per Paese, lingue, priorità.
- `inputs/rete-vendita.md`: agenti per zona (per l'assegnazione dei lead); `inputs/lead/config.yaml`: fonti lead; `inputs/lead/<SETT>/`: export form, eShop, fiere; `inputs/crm/clienti.csv` per le riattivazioni.
- `brand/claim-approvati.md`: validare i claim proposti dagli agenti (stato → approvato/respinto).
- `inputs/materiali/foto-video/`: asset con liberatorie (suffisso `_ok`).
- `inputs/materiali/casi/`: casi clinici con consenso documentato.
- `inputs/interazioni/<SETT>/`: export Meta Business Suite, LinkedIn, YouTube.
- `inputs/analytics/<YYYY-MM>/`: export GA4, newsletter, ads, eShop.

## Definizione di "fatto"
Un run è completo quando esistono: brief del capo, report concorrenza, report risultati (anche "nessun dato"), piano editoriale con messaggi chiave, piano sponsorizzate e brief SEO, almeno 6 post IT (3 IESS, 3 iRES) più le versioni in lingua previste, contenuti sito previsti dal piano, report lead con assegnazioni, riepilogo compliance con claim proposti, riepilogo con decisioni e registro decisioni aggiornato, commit.
