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
- **Calendly (Erstberatung):** https://calendly.com/synoradzki/telefonkonferenz

## Loop-Intervalle
- **Monitor-Modus:** alle 6 Stunden
- **Optimierungs-Modus:** täglich bis 2026-03-24 (Aufbau-Phase), danach min. 7 Tage

## Geschützte Elemente (NIE autonom ändern)
- URL-Struktur
- Domain-Konfiguration
- Impressum / Datenschutz (rechtliche Texte)
- Core Business Info (Firmenname, Kontaktdaten)
- **Design-System:** BaseLayout.astro, Header.astro, Footer.astro, favicon.svg
- Neue Seiten MÜSSEN die bestehenden CSS-Variablen und Klassen nutzen

## Design-System
- **Modus:** Light Mode (weißer Hintergrund)
- **Akzentfarbe:** #009ADE (Brand-Blau)
- **Schrift:** Inter (Google Fonts)
- **CSS-Variablen:** definiert in BaseLayout.astro (:root)
- **Komponenten:** .btn, .btn-primary, .btn-secondary, .card, .badge, .section, .container

## Aktueller Status (2026-03-10)
- **Design:** Light Mode Redesign abgeschlossen, deployed auf Cloudflare
- **Seiten:** 8 Stück (index, leistungen, ki-beratung, ueber-uns, blog, kontakt, impressum, datenschutz)
- **SEO-Loop:** 1 Monitor-Zyklus durchgeführt, keine Rankings in Top 20 (erwartet, Tag 1)
- **Nächste Aktion:** KI-Automatisierung-Seite erstellen (SV 1.600, KD 0)
- **Loop-Counter:** L1·260310
- **Erstberatung-CTAs:** verlinken auf Calendly
- **GSC:** Domain Property angelegt, Sitemap noch einreichen (https://nextki-agentur.de/sitemap-index.xml)

## Server-Setup (TODO)
- Node.js / NVM installieren
- Claude CLI installieren
- `npm install` im Projektordner
- MCP-Server konfigurieren (DataForSEO + GSC)
- Git einrichten (Auth, Identity)
- Cron einrichten für Loop (run-loop.sh)

## Deployment
```
Dateien bearbeiten → git add → git commit → git push
→ Cloudflare Pages erkennt Push → Baut Astro → Deployed automatisch
```
Alternativ manuell: `npx wrangler pages deploy dist --project-name nextki-agentur-de`

## Loop starten
```bash
cd "/Users/christian/Library/Mobile Documents/com~apple~CloudDocs/Claude/WEB SEO Loop/nextki-agentur-de"
claude -p "$(cat "../SKILL.md")" --dangerously-skip-permissions
```
SKILL.md liegt im übergeordneten Ordner `WEB SEO Loop/SKILL.md`.
