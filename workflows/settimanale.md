# Runbook settimanale

| Quando | Chi | Cosa | Output |
|---|---|---|---|
| Lun 07:00 | agenti (automatico o `/run-settimanale`) | monitoraggio concorrenza, piano editoriale, post, sponsorizzate, interazioni, compliance, riepilogo | `output/*/<SETT>*` + `output/riepilogo/<SETT>.md` |
| Lun-Mar | marketing + direzione iRES | lettura riepilogo, modifiche, `stato: approvato` sui file ok | frontmatter aggiornato |
| Mar | marketing | `/pubblica` (bozze in Postiz) o copia manuale; brief al grafico (`/piano-contenuti --grafiche`) | post programmati |
| Mer | marketing | attivazione sponsorizzate approvate (manuale sulle piattaforme) | campagne |
| Ven | marketing | export interazioni in `inputs/interazioni/<SETT>/` → `/review-interazioni`; invio risposte approvate | `output/interazioni/<SETT>.md` |
| Settimane pari | marketing | `/newsletter` → approvazione → invio dalla piattaforma email | `output/newsletter/` |

## Ordine di esecuzione degli agenti (orchestratore)
```
nuova_settimana.sh
├─ monitor-concorrenza ─┐        ┌─ social-copywriter ─┐
├─ community-manager    ├─ strategist ─┼─ ads-planner        ├─ compliance-reviewer ─ riepilogo ─ commit
└─ (inputs/materiali)  ─┘        └─ newsletter-writer ─┘
```

## Input attesi dall'azienda (cartella `inputs/`)
- `inputs/materiali/calendario-corsi.md` (o CSV): date, titoli, relatori, sedi, link iscrizione. Aggiornare mensilmente.
- `inputs/materiali/lanci.md`: novità prodotto in arrivo con date e materiali.
- `inputs/materiali/foto-video/`: asset con liberatorie (indicare nel nome `_ok` se liberatoria presente).
- `inputs/materiali/casi/`: casi clinici con consenso documentato.
- `inputs/interazioni/<SETT>/`: export Meta Business Suite, LinkedIn, YouTube.
- `inputs/analytics/<YYYY-MM>/`: export GA4, newsletter, ads, eShop.

## Definizione di "fatto"
Un run è completo quando esistono: report concorrenza, piano editoriale, almeno 6 post (3 IESS, 3 iRES), piano sponsorizzate, report interazioni (anche "nessun dato"), riepilogo compliance, riepilogo settimana, commit.
