# Aleedin Studio
<a href="https://drive.google.com/drive/folders/159IcBshQdEiyb5zb6TKWGcxoSQdXH_67?usp=drive_link">Download Link</a>
<br />
# Manual Aleedin Studio untuk VS Code

[English manual](VSIX_MANUAL_EN.md)

## Pasang dan buka

1. Dalam VS Code, tekan **Ctrl+Shift+P** dan pilih **Extensions: Install from VSIX…**.
2. Pilih fail `aleedin-studio-0.3.42.vsix` (atau versi terbaharu dalam folder `VSCode_Plugin`). Muat semula VS Code jika diminta.
3. Buka folder projek yang anda percayai, kemudian jalankan **Buka Aleedin Chat** daripada Command Palette. Panel Aleedin muncul di bar sisi sekunder. Backend localhost bermula apabila panel menyambung.

## Pilih bahasa dan buka manual

- Jalankan **Aleedin Studio: Pilih Bahasa / Select Language** dan pilih **Bahasa Melayu** atau **English**. Anda juga boleh menukar pilihan melalui **Settings → Aleedin Studio: Language** atau melalui `/language` dalam chat.
- Dalam halaman sambungan, **Details** menerangkan cara memilih bahasa dan **Features** menyenaraikan tetapan yang disediakan.
- Jalankan **Aleedin Studio: Manual Pengguna / User Manual** untuk memilih dan membuka panduan dalam VS Code.

## Sambung servis AI

1. Buka **Model AI & MCP → Servis AI**.
2. Untuk OpenAI, Anthropic atau Gemini, tambah servis penyedia dan simpan kunci API. Untuk Ollama atau LM Studio, jalankan servis tempatan dan pastikan model sudah dimuat turun.
3. Pilih servis dan model dalam ruang chat. Gunakan butang muat semula model jika senarai belum muncul.
4. Untuk akaun langganan, pilih mod **Sign in**, kemudian ikut aliran log masuk CLI penyedia. Ketersediaan model bergantung pada akaun dan servis yang dipilih.

## Guna beberapa akaun

- **API key:**
  1. Dalam **Servis AI**, klik **Servis baharu**, kemudian **Tambah pantas** (ChatGPT / Claude / Gemini).
  2. Beri **Nama** yang berbeza, contohnya `ChatGPT Kerja`, dan tampal key kedua.
  3. Klik **Simpan servis**.

  Setiap servis menyimpan key sendiri dan muncul berasingan dalam pemilih servis serta **⧉ AI**.
- **Akaun langganan:**
  1. Klik **Langganan & Agent**.
  2. Di bawah **Tambah profil**, isi nama seperti `Claude Kerja`, pilih jenis, dan klik **＋ Tambah profil**.
  3. Klik **Sign in** pada profil baharu tu.

  Setiap profil Claude Code, Codex dan Gemini CLI menyimpan login sendiri, jadi akaun kedua tidak menimpa akaun pertama.
- **Profil Gemini lama:** profil Gemini yang dicipta sebelum versi 0.3.42 memaparkan *login dikongsi (~/.gemini)*. Untuk akaun Google kedua, tambah profil Gemini baharu.

## Lampir fail dan buka lokasi

- Gunakan butang lampiran untuk memilih kod terpilih, fail aktif, tab lain atau fail dari komputer. Anda juga boleh klik kanan dalam editor atau Explorer dan gunakan arahan Aleedin yang berkaitan.
- Klik laluan fail pada lampiran, perubahan Codex atau hasil alat MCP yang memaparkan lokasi fail. Format `src/app.js:12:3` membuka fail pada baris 12, lajur 3. Laluan relatif dirujuk kepada folder workspace pertama.
- Jika editor gagal membuka fail binari seperti `.exe` atau `.dll`, Aleedin meminta Windows File Explorer membuka folder dan memilih fail itu. Bagi hasil alat, kembangkan langkah alat untuk melihat pautan yang dikesan.

## Sambung dan uji MCP

1. Buka **Model AI & MCP → Server MCP**.
2. Cara paling mudah ialah pilih **Contoh MCP percuma**, klik **Isi borang**, kemudian semak borang tu. Untuk server sendiri pula:
   - **stdio**: isi arahan dan argumen, satu argumen setiap baris;
   - **HTTP**: isi URL.
3. Jika server memerlukan kunci, isi **Pemboleh ubah env** dalam format `KEY=VALUE`, atau **Header HTTP** dalam format `Nama: nilai`, satu setiap baris. Kedua-duanya disimpan tersulit.
4. Klik **Simpan MCP** dan **Uji**. Sambungan yang berjaya memaparkan senarai alat.
5. Dalam chat, hidupkan **⚒ MCP**. Setiap panggilan alat meminta **Benarkan / Tolak** melainkan **Auto-lulus** ditanda.

Contoh header untuk server yang meminta Bearer token:

```text
Authorization: Bearer KUNCI_API_ANDA
```

## Alat MCP dalam VSIX

### Terbina dalam (terus boleh guna, tiada pemasangan)

| Contoh MCP | Kegunaan |
|---|---|
| **Lukisan Teknikal (ISO/IEC)** | Lukisan part mekanikal dan skematik elektrik pada helaian standard, dipaparkan sebagai gambar dalam chat. Boleh disimpan sebagai `.svg` atau `.dxf` (AutoCAD). |
| **PLC Ladder Logic** | Rajah ladder IEC 61131-3 dan Structured Text yang sepadan. Boleh disimpan sebagai `.svg` + `.st`. |
| **JavaScript** | Semak sintaks JavaScript tanpa menjalankan kod. |
| **PHP & Apache** | Semak sintaks PHP, maklumat PHP, cari pakej Composer dan status Apache. Perlu PHP CLI dalam PATH. |
| **Blockchain (Ethereum)** | Nombor blok, baki ETH dan transaksi terkini. |
| **Figma** | Baca fail, eksport frame sebagai gambar dan komen. Perlu env `FIGMA_TOKEN`. |

**Office** dan **PowerShell & Command** hanya ada dalam aplikasi desktop Windows.

### Lukisan Teknikal (ISO/IEC)

Alat `draw_technical_drawing` menyokong:
- **Helaian dan blok tajuk:** A4–A1 dengan bingkai, rujukan grid dan blok tajuk (ISO 5457, ISO 7200).
- **Unjuran:** sudut pertama (lalai) atau ketiga, dengan simbolnya. Pandangan depan, atas dan sisi diselaraskan automatik.
- **Garisan dan dimensi:** jenis garisan ISO 128, dimensi linear/⌀/R dengan toleransi (ISO 129), dan skala standard yang dipilih automatik (ISO 5455).
- **Keratan dan nota:** arsiran keratan, label pandangan (contohnya SECTION A-A) dan nota.
- **GD&T** (ISO 1101): 14 simbol, zon ⌀, Ⓜ/Ⓛ dan datum A/B/C.
- **Simbol datum** (ISO 5459).
- **Kemasan permukaan** (ISO 1302): contohnya `Ra 3.2`, dengan pilihan wajib buang bahan atau tanpa buang bahan.
- **Simbol kimpalan** (ISO 2553): fillet, butt V/square/bevel, plug, spot dan seam, dengan saiz, panjang, all-around, kimpalan tapak dan nombor proses.
- **Pandangan isometrik** (ISO 5456-3): blok, silinder dan lubang 3D, dengan permukaan tersembunyi dibuang.

Alat `draw_electrical_schematic` melukis skematik dengan simbol IEC 60617:
- **Komponen:** perintang, kapasitor, induktor, diod, zener, LED, NPN/PNP, op-amp, bekalan, bumi, bateri, sumber, suis, butang tekan, fius, lampu, motor, gegelung geganti dan terminal.
- **Wayar:** disambung ikut pin (`R1.2`, `Q1.B`), dan titik simpang ditambah automatik.

Contoh prompt:

- *"Lukis plat flange 120×80×12 mm, lubang tengah ⌀30 H7, empat lubang ⌀10 pada 15 mm dari tepi. Tiga pandangan sudut pertama, A3, bahan S275JR."*
- *"Lukis bracket L kimpal dengan fillet a5 dua sebelah, keserenjangan 0.1 terhadap datum A, kemasan Ra 3.2 dan pandangan isometrik. Simpan sebagai C:\Lukisan\bracket.dxf."*
- *"Lukis skematik pemacu LED: +12V, perintang 1k, LED merah, transistor BC547 dengan perintang base 10k dari input PWM."*

Perlu tahu:
- Skala dipilih automatik supaya muat, jadi part kecil mungkin dibesarkan (contohnya 5:1). Nyatakan skala dalam prompt kalau nak skala tertentu, contohnya "skala 1:1".
- Klik gambar dalam chat untuk zoom.

### PLC Ladder Logic

- **Elemen:** contact NO/NC, contact edge P/N, coil, coil negated, set/reset, timer TON/TOF/TP, counter CTU/CTD dan cabang selari (OR).
- **Tag:** boleh guna nama (`Start_PB`) atau alamat (`%IX0.0`, `I0.0`).
- **Had:** alat ini hanya melukis dan menjana kod. Ia tidak menyambung atau memuat turun apa-apa ke PLC.

Contoh: *"Lukis ladder motor start/stop dengan seal-in, butang henti NC dan overload. Selepas motor jalan 5 saat, nyalakan lampu."*

### Contoh MCP pihak ketiga (dimatikan secara lalai)

Bila anda pilih salah satu, ruangan env diisi dengan nama key yang diperlukan dan mesej menerangkan tempat untuk mendapatkannya.

| Kumpulan | Contoh MCP | Keperluan |
|---|---|---|
| Marketing & SEO | Apify, Firecrawl, Brave Search, Google Search Console, DataForSEO | Node.js (`npx`) dan API key masing-masing |
| Marketing & SEO | Google Analytics (GA4) | Python 3.10+, `pipx`, fail JSON credentials Google |
| Kejuruteraan | KiCad (Skematik & PCB) | KiCad 9+ dan `uv` |
| Kejuruteraan | FreeCAD (Part Mekanikal & CAD) | FreeCAD + addon MCP dan `uv` |
| Kejuruteraan | draw.io (Diagram & Simbol) | Node.js (`npx`) |
| Kejuruteraan | SPICE Simulasi Litar (ngspice) | Python, `uv` dan ngspice dalam PATH |
| Kejuruteraan | PCB Parts (JLCPCB, Mouser, DigiKey) | Internet sahaja (server HTTP) |
| Umum | Sequential Thinking, Memory, Filesystem, Fetch, Time | Node.js (`npx`) atau `uvx` |

## Selesaikan masalah

| Masalah | Tindakan |
|---|---|
| Backend terputus | Klik **Sambung semula** dalam panel dan semak status localhost. |
| Tiada model tempatan | Pastikan servis tempatan sedang berjalan dan model sudah dimuat turun. Muat semula senarai model. |
| MCP membalas `401` | Semak kunci API, nama header, URL dan format pengesahan server. Simpan dan uji semula. |
| Fail tidak ditemui | Semak laluan yang diberi oleh alat dan pastikan fail masih wujud dalam workspace atau di lokasi mutlak yang dipaparkan. |
| Arahan baharu belum kelihatan | Semak versi sambungan dan jalankan **Developer: Reload Window**. |
| Contoh MCP baharu tiada dalam senarai | Backend lama masih berjalan. Tutup VS Code dan aplikasi desktop, jalankan `Stop_Backend.cmd` dalam folder desktop, kemudian buka semula. |
| MCP `npx` / `uvx` gagal dimulakan | Pasang Node.js atau uv, dan pastikan `npx` / `uvx` ada dalam PATH. Mulakan semula VS Code selepas pemasangan. |
| Lukisan "tidak muat dalam helaian" | Guna skala lebih kecil (contohnya 1:2) atau helaian lebih besar (A2). |

Untuk **Visualisasi Data**, gunakan binaan Aleedin Studio Desktop Windows dan buka butang itu pada bar atas aplikasi.
