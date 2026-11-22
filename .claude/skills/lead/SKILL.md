---
name: lead
description: Raccoglie, qualifica e assegna i lead (social, email, form, eShop, corsi, fiere), prepara bozze di risposta e sequenze, aggiorna il registro e i follow-up. Usa per "lead", "chi ci ha contattato", "assegna i lead", "follow-up", "sequenza post-corso", "riattiva clienti".
---

`SETT=$(bash scripts/nuova_settimana.sh)`. Verifica le fonti disponibili: `output/risultati/$SETT.md`, `inputs/lead/$SETT/`, Gmail (connettore presente?), `inputs/crm/clienti.csv`. Lancia `crm-lead`: "Produci `output/lead/$SETT.md` e aggiorna `output/lead/registro-lead.csv` dalle fonti disponibili; crea le bozze in Gmail solo se il connettore è presente. Richiesta: $ARGUMENTS (`--sequenza post-corso|post-download|riattivazione` per le sequenze; `--stato <id> <stato>` per aggiornare il registro)." Poi `compliance-regolatorio` sul file prodotto. Mostra: lead caldi con owner e scadenza, segnalazioni urgenti (reclami, eventi avversi), bozze da approvare, follow-up scaduti.
