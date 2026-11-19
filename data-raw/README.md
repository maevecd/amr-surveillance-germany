# Raw data – source log

Files in this folder are kept **exactly as downloaded**. Never edit them by hand; all cleaning happens in scripts in `R/`, which write to `data/`.

## ecdc_atlas_amr_accessed-2026-11-19.csv

| Field | Value |
|---|---|
| Source | ECDC Surveillance Atlas of Infectious Diseases – health topic "Antimicrobial resistance" (EARS-Net data) |
| URL | https://atlas.ecdc.europa.eu/public/index.aspx |
| Accessed | 2026-11-19 |
| Export | Full dataset for the AMR health topic (CSV), downloaded by Maeve Geiger; renamed from `ECDC_surveillance_data_Antimicrobial_resistance.csv` |
| Coverage | Years 2000–2025; 31 countries (EU/EEA + UK for earlier years); 8 pathogens, incl. "Data quality" entries |
| Indicators | R - resistant isolates (N); R - resistant isolates, percentage (%); S - susceptible isolates; I - susceptible, increased exposure; Total tested isolates; Completeness age/gender; Penicillin non-wild-type (S. pneumoniae) |
| Format | Long format: one row per HealthTopic × Population (pathogen\|antibiotic) × Indicator × Time × Region; value in `NumValue` |
| Size | 94,867 data rows, ~13.9 MB |
| Note | Contains % resistant and counts – **not** the incidence per 100,000 population used for the EU 2030 targets |
| Licence / reuse | Reproduction of EU/EEA surveillance data authorised provided ECDC and the reporting Member States are acknowledged as the source (ECDC: https://www.ecdc.europa.eu/en/publications-data/access-eueea-surveillance-data-third-parties ; Atlas data disclaimer: https://atlas.ecdc.europa.eu/public/disclaimer.htm). Checked 2026-11-19. |
| Cite as | European Centre for Disease Prevention and Control (ECDC). Surveillance Atlas of Infectious Diseases – Antimicrobial resistance. Stockholm: ECDC. Data from EU/EEA Member States reported to EARS-Net/TESSy. Accessed 19 Nov 2026. Available at: https://atlas.ecdc.europa.eu/public/index.aspx |
