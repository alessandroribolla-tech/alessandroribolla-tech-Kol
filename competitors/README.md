# Registro concorrenti

`competitors.yaml` è la lista monitorata ogni settimana dall'agente `monitor-concorrenza`.

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
