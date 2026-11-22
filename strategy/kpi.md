# KPI e fonti dati

| Area | KPI | Fonte | Chi la fornisce |
|---|---|---|---|
| Social | follower, reach, impression, interazioni, tasso di interazione, click link, salvataggi | Meta Business Suite export, LinkedIn Analytics export, YouTube Studio, Postiz analytics | marketing → `inputs/analytics/YYYY-MM/` |
| Sito | sessioni, utenti, pagine prodotto viste, download cataloghi, form inviati, iscrizioni corsi | GA4 export CSV | marketing |
| Newsletter | iscritti, open rate, click rate, disiscrizioni | piattaforma email export | marketing |
| Ads | spesa, impression, CPC, lead, CPL, ROAS eShop | Meta Ads / LinkedIn / Google export | marketing |
| Commerciale | richieste agenti, nuovi clienti, vendite eShop, partecipanti corsi | CRM / gestionale | direzione commerciale |
| Concorrenza | n. novità rilevate, lanci, corsi, campagne per concorrente | report settimanali | agente |

Formato export: CSV in `inputs/analytics/YYYY-MM/<fonte>.csv`. L'agente `analyst` legge tutto ciò che trova; dove manca scrive `n.d.`.
