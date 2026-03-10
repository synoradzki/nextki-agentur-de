# NextKI Agentur – Projekt-Config

## Domain & Keywords
- **Domain:** nextki-agentur.de
- **Site URL (GSC):** https://nextki-agentur.de
- **Haupt-Keyword:** "KI Agentur" (SV 1.000, KD 12, CPC 13,13€)
- **Secondary Keywords:** "KI Beratung" (SV 2.400, KD 3), "KI Automatisierung" (SV 1.600, KD 0), "KI Consulting" (SV 720, KD 0)
- **Domain-Typ:** Partial Match Domain (Next + KI + Agentur)

## Tech-Stack
- **Framework:** Astro (Static Site Generator)
- **Hosting:** Cloudflare Pages (auto-deploy bei git push)
- **Repo:** github.com/synoradzki/nextki-agentur-de (Branch: main)
- **MCP-Server:** DataForSEO, Google Search Console

## Kontakt & E-E-A-T
- **Betreiber:** Christian Synoradzki
- **E-Mail:** kontakt@nextki-agentur.de
- **Website:** synoradzki.de

## Loop-Intervalle
- **Monitor-Modus:** alle 6 Stunden
- **Optimierungs-Modus:** frühestens 7 Tage nach letzter Änderung

## Geschützte Elemente (NIE autonom ändern)
- URL-Struktur
- Domain-Konfiguration
- Impressum / Datenschutz (rechtliche Texte)
- Core Business Info (Firmenname, Kontaktdaten)

## Deployment
```
Dateien bearbeiten → git add → git commit → git push
→ Cloudflare Pages erkennt Push → Baut Astro → Deployed automatisch
```
Alternativ manuell: `npx wrangler pages deploy dist --project-name nextki-agentur-de`
