# Registro concorrenti

`competitors.yaml` è la lista monitorata dall'agente `monitor-concorrenza`: circa 75 voci organizzate per **gruppo societario** e **area geografica** (gruppi globali, Corea, Israele, Italia, Francia, Svizzera, Turchia, Spagna, Germania, biomateriali).

| Tier | Chi | Cadenza |
|---|---|---|
| 1 | concorrenti diretti sul mercato italiano e Swiss made (Sweden & Martina, JDentalCare, B&B, Resista, Prodent, BTK, Biomax, BioSAFin, AoN, IDI, Oxy Implant, MegaGen, Ziacom, Straumann, Thommen, TRI) | settimanale, completo |
| 2 | gruppi globali e brand con presenza in Italia (Nobel, Dentsply, ZimVie, Camlog, BioHorizons, Neodent, Anthogyr, NUVO, Osstem, Dentium, Adin, MIS, Biotech Dental, TBR, SGS, Implant Swiss, ROOTT, IML…) | settimanale, sintetico (news) |
| 3 | osservati: Turchia, altri coreani e israeliani, Spagna, Germania, zirconia, biomateriali | mensile |

Campo `origine`: `utente` = indicato dalla direzione, `agente` = proposto dagli agenti e da confermare. Voci con `sito: null` (Kalodont, Medsolaris, Dentcon) sono da chiarire con la direzione.

- Al primo run l'agente verifica URL e handle e imposta `verificato: true`, correggendo quelli errati.
- Per aggiungere un concorrente: `/nuovo-competitor <nome>` oppure modificare il file a mano.
- Lo storico dei rilevamenti è in `output/report-concorrenza/<settimana>.md`; lo snapshot cumulativo per concorrente è in `competitors/snapshots/<id>.md` (creato dall'agente).

## Cosa viene osservato per ciascuno
1. Novità sul sito (news, lanci prodotto, nuove pagine, listini, corsi).
2. Attività social pubblica (LinkedIn, YouTube, Instagram/Facebook quando leggibili): frequenza, temi, formati, campagne.
3. Eventi, fiere, congressi sponsorizzati, KOL coinvolti.
4. Comunicati stampa e articoli su testate di settore.
5. Offerte di lavoro (segnalano espansione commerciale o nuove aree).
6. Advertising visibile (Meta Ad Library: https://www.facebook.com/ads/library/, LinkedIn Ads tab della pagina).
