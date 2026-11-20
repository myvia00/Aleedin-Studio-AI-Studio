# Aleedin Studio
<a href="https://drive.google.com/drive/folders/159IcBshQdEiyb5zb6TKWGcxoSQdXH_67?usp=sharing">Download Link</a>
<br />
AI workspace untuk berbual dengan **ChatGPT, Claude, Gemini** dan **AI tempatan (Ollama / LM Studio)**, dengan **alat MCP** tersuai — sebagai **aplikasi desktop Windows** dan **plugin VS Code**.

📖 Dokumentasi penuh: [Source/README.md](Source/README.md) · 🛠️ Rujukan pembangunan: [Source/docs/development.md](Source/docs/development.md)

## Ciri utama

- Chat dengan API OpenAI, Anthropic, Google dan servis OpenAI-compatible, atau model tempatan tanpa API key.
- Sesi CLI rasmi (Claude Code, Codex, Gemini CLI) untuk akaun langganan.
- **Multi-AI**: satu prompt kepada beberapa AI serentak.
- **Alat MCP** (stdio / HTTP) dengan kelulusan setiap panggilan, termasuk alat terbina dalam:
  - **PHP & Apache** — semak sintaks PHP, cari komponen Composer, status Apache.
  - **Office** — kawal Excel, Word dan PowerPoint (aplikasi desktop sahaja).
  - **PowerShell & Command** — jalankan arahan dalam PC, sentiasa dengan kelulusan (aplikasi desktop sahaja).
  - **REA** — reverse engineering binari dan aplikasi ([morluto/rea](https://github.com/morluto/rea)).
  - **Figma** — baca fail, eksport frame sebagai gambar, komen.
  - **Lukisan Teknikal (ISO/IEC)** — lukisan part mekanikal (ISO 128/129, blok tajuk ISO 7200) dan skematik elektrik (simbol IEC 60617).
  - **PLC Ladder Logic** — lukis rajah ladder IEC 61131-3 dan jana Structured Text.
  - JavaScript, Blockchain (Ethereum) dan Ekonomi Malaysia.
- **Contoh MCP kejuruteraan** — KiCad, FreeCAD, draw.io, SPICE (ngspice) dan PCB Parts ([butiran](Source/README.md#elektronik-eda-lukisan-teknikal--plc)).
- **Contoh MCP marketing & SEO** — Apify, Firecrawl, Brave Search, Google Analytics (GA4), Google Search Console dan DataForSEO ([butiran](Source/README.md#marketing-seo--research)).
- Gambar daripada alat MCP dipaparkan terus dalam chat.

## Keluaran Desktop Windows 0.3.60

Keluaran ini menambah pilihan MCP untuk kerja kejuruteraan:

- **CNC G-code & GNU C++** menyemak sintaks G-code secara luar talian dan menyokong kompilasi C++ melalui WSL.
- **Lukisan Teknikal (ISO/IEC)** kini boleh membaca skematik, carta alir dan pelan lantai serta mencari nombor komponen dalam katalog PDF. Ia juga boleh menjana rajah konsep turbin, grid kuasa dan pemprosesan petroleum.

Preset ini tersedia di **Tetapan → Server MCP → Contoh MCP percuma**.

## Mula

| | |
|---|---|
| Desktop Windows | Ekstrak `Source/dist/Aleedin_Studio_Windows_<versi>.zip`, kemudian buka **Aleedin Studio.exe** |
| Plugin VS Code | **Extensions: Install from VSIX...** → `Source/dist/aleedin-studio-<versi>.vsix` |
| Dari source | `cd Source && npm install && npm run desktop` |

## Bina dan uji

```bash
cd Source
npm install
npm test
npm run build:extension   # plugin VS Code (.vsix)
npm run build:windows     # aplikasi desktop (.zip)
```
