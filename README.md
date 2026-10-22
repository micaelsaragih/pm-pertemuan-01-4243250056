# Tugas Rutin 1 — Hello World Flutter

## Identitas

- Nama: Micael Zecsen Saragih
- NIM: 4243250056
- Kelas: PSIK 24 D
- Mata kuliah: Pemrograman Mobile
- Program studi: Ilmu Komputer, Universitas Negeri Medan

## Deskripsi Aplikasi

Aplikasi ini menampilkan tulisan Hello, World!, nama, NIM, dan kelas.
Widget tambahan yang digunakan adalah Icon dan ElevatedButton.icon.
Ketika tombol Sapa Saya ditekan, aplikasi menampilkan pesan melalui SnackBar.

## Versi Pengembangan

Ringkasan keluaran `flutter --version`:

```text
Flutter 3.47.7 • channel stable
Tools • Dart 3.13.5 • DevTools 2.60.0
```

Keluaran versi lengkap terlihat pada screenshot pemeriksaan environment.

## Pemeriksaan Environment

![Hasil flutter doctor](docs/flutter-doctor.png)

Flutter, Android toolchain, dan Chrome telah terdeteksi.
Visual Studio belum terpasang untuk pengembangan desktop Windows.
Pengujian aplikasi pada tugas ini dilakukan melalui Chrome.

## Tampilan Aplikasi

![Aplikasi Hello World dan tombol sapaan](docs/aplikasi.png)

## Cara Menjalankan

Dari folder proyek, jalankan:

```bash
flutter pub get
flutter run -d chrome
```

Klik tombol Sapa Saya untuk menampilkan pesan sapaan.

## Pengujian

Perintah yang digunakan:

```bash
flutter analyze
flutter test
```

Hasil pemeriksaan:
- `flutter analyze`: No issues found!
- `flutter test`: 2 tes lulus.

Tes pertama memeriksa tulisan Hello World dan identitas mahasiswa.
Tes kedua memeriksa kemunculan pesan setelah tombol Sapa Saya ditekan.

## Kendala dan Penanganan

### 1. Perintah Flutter tidak dikenali

PowerShell awalnya tidak mengenali perintah `flutter`.
Lokasi `D:\dev\flutter\bin` ditambahkan ke PATH agar perintah Flutter
dapat dijalankan dari terminal.

### 2. Android SDK tidak ditemukan

Flutter belum mengetahui lokasi Android SDK yang dipasang di disk D.
Lokasinya diatur menggunakan:

```bash
flutter config --android-sdk "D:\dev\Android\Sdk"
```

Komponen Android SDK Command-line Tools juga dipasang melalui SDK Manager.
Pemeriksaan berikutnya menunjukkan Android toolchain bertanda hijau.

### 3. Emulator gagal dijalankan dan ruang C terbatas

Data perangkat virtual ternyata tersimpan di disk C meskipun SDK berada
di disk D. Emulator juga mengalami crash setelah beberapa pengujian
dan pemasangan ulang.

Masalah crash emulator belum terselesaikan. Untuk melanjutkan praktikum,
aplikasi dijalankan melalui Chrome. Perangkat virtual yang tidak digunakan
dan file unduhan yang sudah tidak diperlukan dibersihkan untuk mengurangi
penggunaan penyimpanan.

## Esai: Native, Hybrid, dan Cross-platform

Pengembangan aplikasi mobile dapat dilakukan melalui pendekatan native,
hybrid, dan cross-platform. Menurut saya, pemilihannya perlu mempertimbangkan
kebutuhan fitur, kemampuan tim, anggaran, dan waktu pengerjaan.

Pendekatan native menggunakan bahasa dan alat pengembangan khusus untuk
suatu platform, misalnya Kotlin untuk Android dan Swift untuk iOS.
Keunggulannya adalah akses langsung terhadap fitur perangkat serta kemudahan
menyesuaikan aplikasi dengan karakteristik sistem operasi. Namun, pengembangan
untuk Android dan iOS biasanya membutuhkan dua basis kode. Contoh kasus
yang sesuai adalah aplikasi kamera profesional yang membutuhkan pengaturan
kamera secara mendalam dan optimasi khusus pada masing-masing platform.

Pendekatan hybrid menggunakan teknologi web seperti HTML, CSS, dan JavaScript
yang dijalankan dalam WebView. Pendekatan ini cocok untuk tim yang sudah
menguasai pengembangan web. Contohnya adalah aplikasi informasi kegiatan
organisasi dengan fitur jadwal, berita, dan formulir pendaftaran sederhana.
Kebutuhan tersebut tidak terlalu bergantung pada pemrosesan grafis atau
fitur perangkat yang kompleks.

Pendekatan cross-platform memungkinkan sebagian besar kode digunakan
bersama untuk beberapa platform. Flutter merupakan salah satu contohnya.
Pendekatan ini cocok untuk aplikasi pemesanan produk UMKM yang perlu
tersedia di Android dan iOS dengan tim serta anggaran terbatas.

Dengan demikian, tidak ada pendekatan yang selalu paling baik.
Pilihan teknologi perlu disesuaikan dengan kebutuhan pengguna dan
sumber daya pengembang.

## Pernyataan Penggunaan AI

Saya menggunakan ChatGPT untuk membantu memahami kendala instalasi,
menyusun contoh kode tampilan dan tes widget, serta menyusun draf README
dan esai. Saya menjalankan kode dan pengujian di laptop serta memeriksa
hasil aplikasi melalui Chrome.

Dari proses ini, saya mempelajari pengaturan PATH, lokasi Android SDK,
fungsi widget penyusun halaman, penanganan tombol dengan onPressed,
pengujian widget, dan pencatatan perubahan menggunakan Git.