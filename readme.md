# Aleedin Studio V0.3.60

Keluaran Windows Desktop x64 dan sambungan VS Code daripada sumber commit `7308149` dengan metadata versi Desktop diselaraskan kepada `0.3.60`.

## Windows Desktop

1. Ekstrak semua kandungan `Aleedin_Studio_Windows_0.3.60.zip` ke satu folder.
2. Jalankan `Aleedin Studio.exe` dari folder itu. Pakej ini ialah aplikasi mudah alih dan binarinya tidak ditandatangani.

## VS Code dan alat MCP

1. Buka VS Code versi 1.106.0 atau lebih baharu.
2. Buka **Extensions** dan pilih **Install from VSIX...** melalui menu **…**.
3. Pilih `aleedin-studio-0.3.60.vsix` dan buka Aleedin Studio dari bar sisi. Rujuk [manual Bahasa Melayu](VSIX_MANUAL_MS.md) atau [manual English](VSIX_MANUAL_EN.md) untuk persediaan.

Dalam Aleedin Studio, buka **Tetapan → Server MCP → Contoh MCP percuma** untuk memilih preset.

- **CNC G-code & GNU C++** menyemak sintaks G-code di luar talian. Kompilasi C++ memerlukan GNU `g++` pada Windows atau dalam WSL, mengikut pilihan.
- **Lukisan Teknikal (ISO/IEC)** membaca skematik, carta alir dan pelan lantai serta mencari nombor komponen dalam katalog PDF. OCR imej menggunakan Windows.
- Pembantu CNC dan pembaca lukisan disertakan dalam kedua-dua pakej dan memerlukan runtime .NET 8 atau lebih baharu.

## SHA-256

```text
BF957AAA696F624E3C893BB1D033AEB52C29AB4EA968D65FBE9E93151067A349  Aleedin_Studio_Windows_0.3.60.zip
8D7E1E06DB0D49336A0292B7E3F5B64770E8CD48748B85C1E1610685774C4AC8  aleedin-studio-0.3.60.vsix
```
