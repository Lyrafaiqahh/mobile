import 'dart:io';

void main() {
  // Map menyimpan data dengan format: nama : nilai
  Map<String, int> nilaiMahasiswa = {};

  print('=== INPUT NILAI MAHASISWA ===');

  // Loop untuk input data
  int jumlahMahasiswa = 5;
  for (var i = 0; i < jumlahMahasiswa; i++) {
    stdout.write('Masukkan nama mahasiswa ${i + 1}: ');
    String nama = stdin.readLineSync() ?? '';

    stdout.write('Masukkan nilai $nama: ');
    int? nilai = int.tryParse(stdin.readLineSync() ?? '');

    if (nama.isNotEmpty && nilai != null) {
      nilaiMahasiswa[nama] = nilai;
    } else {
      print('⚠️ Data tidak valid, silakan input ulang!');
      i--; // ulangi input untuk mahasiswa ini
    }
  }

  // Tampilkan hasil dengan kategori
  print('\n=== HASIL PENILAIAN ===');
  print('| No | Nama Mahasiswa        | Nilai | Kategori |');
  print('|----|-----------------------|-------|----------|');

  int no = 1;
  for (var entry in nilaiMahasiswa.entries) {
    String kategori = hitungKategori(entry.value);
    print(
        '| ${no.toString().padRight(2)} | ${entry.key.padRight(21)} | ${entry.value.toString().padRight(5)} | ${kategori.padRight(8)} |');
    no++;
  }

  print('==============================');
}

// Fungsi untuk menentukan kategori kelulusan
String hitungKategori(int nilai) {
  if (nilai >= 80) {
    return 'A';
  } else if (nilai >= 60 && nilai <= 79) {
    return 'B';
  } else {
    return 'C';
  }
}