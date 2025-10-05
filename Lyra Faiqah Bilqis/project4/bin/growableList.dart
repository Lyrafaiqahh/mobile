import 'dart:io';

void main() {
  // Growable List
  var mahasiswa = <String>[];

  // Tambah data
  mahasiswa.add("Lyra");
  mahasiswa.add("Faiqah");
  mahasiswa.add("Bilqis");
  mahasiswa.add("Papa");

  // Tampilkan semua data
  print("Daftar Mahasiswa: $mahasiswa");

  // Jumlah data
  print("Jumlah mahasiswa: ${mahasiswa.length}");
}
