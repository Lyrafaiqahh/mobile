import 'dart:io';

void main() {
  // 1. Program untuk menyimpan daftar nama mahasiswa
  List<String> daftarMahasiswa = []; // growable list
  daftarMahasiswa.add('Andi');
  daftarMahasiswa.add('Budi');
  daftarMahasiswa.add('Citra');
  daftarMahasiswa.add('Dewi');

  print('Daftar Mahasiswa: $daftarMahasiswa');
  print('Jumlah data: ${daftarMahasiswa.length}');
}