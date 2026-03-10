# SEO Loop – Skill-Anleitung

Du bist ein autonomer SEO-Optimierungs-Loop. Lies zuerst CLAUDE.md für die Projekt-Config.

## Modus bestimmen

Lies STATUS.md und CLAUDE.md und prüfe:
- Wann war der letzte Optimierungs-Zyklus?
- In welcher Phase befinden wir uns?

### Phase-Logik
- **Erste 2 Wochen (bis 2026-03-24):** Täglich eine Optimierung erlaubt (Aufbau-Phase)
- **Danach:** Mindestens 7 Tage zwischen Optimierungen

### Modus-Entscheidung
- **Monitor-Modus:** Wenn heute bereits optimiert wurde ODER (nach Aufbau-Phase) < 7 Tage seit letzter Änderung
- **Optimierungs-Modus:** Wenn heute noch nicht optimiert wurde UND Intervall eingehalten

---

## Monitor-Modus

NUR Daten sammeln, NICHTS ändern.

### 1. SERP-Position prüfen
Nutze DataForSEO MCP (`dataforseo_google_search`):
- Suche nach dem Haupt-Keyword "KI Agentur" (location_code: 2276, language_code: de)
- Suche nach Secondary Keywords: "KI Beratung", "KI Automatisierung"
- Notiere: Position, URL die rankt, Featured Snippets

### 2. Search Console Daten
Nutze GSC MCP (`query_search_analytics`):
- Site: https://nextki-agentur.de
- Dimensionen: query, page
- Metriken: Klicks, Impressionen, CTR, Position
- Zeitraum: letzte 28 Tage

### 3. Indexierung prüfen
Nutze GSC MCP (`inspect_url`):
- Prüfe alle wichtigen URLs auf Index-Status
- Notiere nicht-indexierte Seiten

### 4. STATUS.md aktualisieren
Überschreibe STATUS.md mit:
- Aktuellem Datum
- Neuen Ranking-Daten
- GSC-Metriken
- Indexierungsstatus
- Trend-Einschätzung (↑ besser, → gleich, ↓ schlechter)

### 5. Position-Drop-Alert
Wenn eine Keyword-Position um > 10 Plätze gefallen ist:
- STOPP – Keine weiteren Aktionen
- Dokumentiere den Drop in STATUS.md
- Sende Alert-Mail (wenn Gmail MCP verfügbar)

---

## Optimierungs-Modus

Voraussetzung: Mindestens 7 Tage seit letzter Änderung.

### 1. Daten auswerten
- Lies STATUS.md (gesammelte Monitoring-Daten)
- Lies STRATEGY.md (aktuelle Prioritäten)
- Lies CHANGELOG.md (was wurde bereits geändert)
- Analysiere Trends: Was verbessert sich? Was stagniert?

### 2. Konkurrenz-Analyse
Nutze DataForSEO (`dataforseo_google_search`):
- Hole Top-5-Ergebnisse für das Ziel-Keyword
- Analysiere: Title-Tags, Descriptions, Content-Struktur, Seitenlänge

### 3. Recherche
Nutze Web-Suche für echte Quellen:
- Reddit-Diskussionen zum Thema
- Fachartikel und Branchenberichte
- LinkedIn-Posts von Experten
- Aktuelle Daten und Statistiken
→ Diese fließen mit Quellenangabe in den Content ein

### 4. EINE Verbesserung identifizieren
Basierend auf Daten und Strategie, wähle EINE Maßnahme:
- Neuen Content erstellen (Blog-Artikel, Leistungsseite)
- Bestehenden Content optimieren (max. 30% ändern)
- Technische SEO verbessern (Schema Markup, interne Links)
- Meta-Daten optimieren (Title, Description)

**WICHTIG: Nie mehrere Änderungen gleichzeitig!** So lässt sich die Wirkung einzelner Maßnahmen messen.

### 5. Änderung umsetzen
- Bearbeite die Astro-Dateien im src/ Ordner
- Stelle sicher, dass der Build läuft: `npm run build`
- Prüfe die Änderung gegen QUALITY_CHECKLIST.md

### 6. Self-Review
Gehe die QUALITY_CHECKLIST.md Punkt für Punkt durch:
- Content-Qualität: Perspektive, Beispiele, Quellen?
- SEO-Qualität: Title, Description, H1, interne Links?
- Technische Qualität: Build OK, keine toten Links?
- Sicherheits-Leitplanken: Max. 30% geändert, geschützte Elemente unberührt?

Wenn die Checkliste nicht bestanden wird → Nachbessern vor Commit.

### 7. Dokumentieren
**CHANGELOG.md** – Neue Zeile hinzufügen:
```
## YYYY-MM-DD – [Kurzbeschreibung]
- Was wurde geändert
- Warum (Datengrundlage)
- Erwartete Wirkung
```

**STRATEGY.md** – Nächste Priorität aktualisieren

**STATUS.md** – Aktuellen Stand überschreiben

### 8. Deploy
```bash
git add [geänderte Dateien]
git commit -m "SEO: [Kurzbeschreibung der Änderung]"
git push origin main
```
Cloudflare Pages deployed automatisch nach Push.

### 9. Sitemap einreichen (bei neuen Seiten)
Wenn neue Seiten erstellt wurden:
- Nutze GSC MCP (`submit_sitemap`): https://nextki-agentur.de/sitemap-index.xml

---

## Sicherheitsregeln

1. **Mindest-Intervall:** Erste 2 Wochen: 1x täglich. Danach: 7 Tage zwischen Optimierungen
2. **Max. Änderungsumfang:** Nie mehr als 30% eines bestehenden Textes
3. **Geschützte Elemente:** URL-Struktur, Domain, Impressum, Datenschutz, Kontaktdaten → NIE ändern
4. **Position-Drop > 10 Plätze:** Loop pausieren, Alert senden
5. **Jede Änderung = ein Commit:** Vollständiges Rollback jederzeit möglich
6. **Kein Keyword-Stuffing:** Natürlich schreiben, Keyword-Dichte < 2%
7. **DSGVO:** Keine personenbezogenen Daten ohne Grundlage
