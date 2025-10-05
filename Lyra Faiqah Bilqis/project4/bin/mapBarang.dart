import 'dart:io';

void main() {
  // Map Barang
  var barang = {
    "B001": {"nama": "Laptop", "harga": 10000000},
    "B002": {"nama": "Mouse", "harga": 150000},
    "B003": {"nama": "Keyboard", "harga": 300000},
  };

  // Tampilkan semua barang
  barang.forEach((kode, data) {
    print("Kode: $kode, Nama: ${data['nama']}, Harga: Rp${data['harga']}");
  });
}
