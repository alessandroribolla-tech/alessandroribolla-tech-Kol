# Input dall'azienda

Qui si depositano i materiali che gli agenti non possono procurarsi da soli. Tutto ciò che manca viene segnalato nel riepilogo settimanale.

| Cartella | Contenuto | Cadenza |
|---|---|---|
| `idea/calendario-corsi.md` | corsi IDEA da pubblicare, compilati da IDEA (education separata dal marketing) | mensile, a cura di IDEA |
| `materiali/lanci.md` | novità prodotto, date, claim approvati dal regolatorio | quando serve |
| `materiali/foto-video/` | asset con liberatoria (suffisso `_ok`) | continuo |
| `materiali/casi/` | casi clinici con consenso informato (PDF o nota) | continuo |
| `interazioni/<YYYY-Wnn>/` | export Meta Business Suite (Insights → Esporta), LinkedIn Analytics, YouTube Studio; oppure commenti incollati in `.md` | settimanale |
| `analytics/<YYYY-MM>/` | GA4, piattaforma newsletter, Meta/LinkedIn/Google Ads, eShop | mensile |
| `postiz-mappa.yaml` | mappa brand+canale → id integrazione Postiz | una volta |

File sensibili (dati personali di pazienti o clienti) non vanno committati: il `.gitignore` esclude CSV/XLSX di interazioni e analytics, foto e casi.
