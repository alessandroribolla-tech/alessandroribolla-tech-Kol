# Runbook mensile (primo lunedì del mese)

1. L'azienda deposita gli export in `inputs/analytics/<YYYY-MM>/` (vedi `strategy/kpi.md`).
2. `/report-mensile` → `analyst` produce `output/report-mensili/<YYYY-MM>.md` e CSV aggregato.
3. `strategist` aggiunge la sezione "Revisione <mese>" a `strategy/strategia-comunicazione.md`: pilastri, cadenze, budget, pubblici.
4. `web-content` produce i 2 contenuti sito del mese.
5. Revisione con la direzione: aggiornare `strategy/kpi.md` (target), `competitors/competitors.yaml` (aggiunte/rimozioni), `brand/*.md` se cambia qualcosa.
6. Ogni 4 settimane il monitoraggio include anche il tier 3.

## Trimestrale
- Audit SEO dei siti (skill `searchfit-seo:seo-audit` se disponibile) e revisione dell'area paziente.
- Revisione compliance con il regolatorio: `brand/compliance.md`.
- Benchmark completo dei concorrenti tier 1: frequenza, formati, education, pricing visibile.
