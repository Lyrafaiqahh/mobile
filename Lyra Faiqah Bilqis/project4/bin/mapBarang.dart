import 'dart:io';

void main() {
  // 3. Gunakan Map untuk menyimpan data barang (dimulai dengan 1 barang saja)
  List<Map<String, dynamic>> daftarBarang = [
    {'kode': 'BRG001', 'nama': 'Laptop', 'harga': 8500000},
  ];

  print('Daftar Barang Awal:');
  for (var barang in daftarBarang) {
    print('Kode: ${barang['kode']}, Nama: ${barang['nama']}, Harga: Rp${barang['harga']}');
  }

  print('\n--- Menambahkan 3 barang baru ---\n');

  // Menambahkan 3 barang baru
  daftarBarang.add({'kode': 'BRG002', 'nama': 'Mouse', 'harga': 150000});
  daftarBarang.add({'kode': 'BRG003', 'nama': 'Keyboard', 'harga': 250000});
  daftarBarang.add({'kode': 'BRG004', 'nama': 'Monitor', 'harga': 2500000});

  print('Daftar Barang Setelah Penambahan:');
  for (var barang in daftarBarang) {
    print('Kode: ${barang['kode']}, Nama: ${barang['nama']}, Harga: Rp${barang['harga']}');
  }

  print('\nTotal barang: ${daftarBarang.length}');
}