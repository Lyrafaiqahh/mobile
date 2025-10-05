import 'dart:io';


//fixlist
// var fl = List<int>.filled(4,2);
// fl[0] = 1;
// fl[1] = 2;
// fl[2] = 3;
// fl[3] = 4;
// //fl[4] = 5;

//growlist
// var gl=[1,2,3];
// gl.add(18);
// gl.remove(2);
// stdout.writeln(gl);

//setNilai
// var setNilai1=<int>{1,2,3,4};
// var setNilai2=<int>{3,3,4,5};
// print(setNilai2);
// print(setNilai1.union(setNilai2));
// print(setNilai1.intersection(setNilai2));

// var setNilai1 =<String>{};
//   //var setNilai2 =<int>{1,2,3};
 
//  stdout.writeln("Jumlah data setNilai1 = ");
//   String? input1 = stdin.readLineSync();
//   int jumlah1 = (int.tryParse(input1 ?? '')) ?? 0;
//   for (var i = 0; i < jumlah1; i++) {
//     stdout.writeln("Masukkan Nilai Ke-${i+1} = ");
//     String? inputNilai = stdin.readLineSync();
//     String nilai=inputNilai ?? '0';
//     setNilai1.add(nilai);
//   }

// var NilaiList = setNilai1.toList();
// //print(setNilai1.elementAt(0));
//   print(NilaiList.elementAt(1));

//print('Hello world: ${project3.calculate()}!');

//map

void main() {
  // Map untuk menyimpan data mahasiswa (nama: kategori nilai)
  var mahasiswa = <String, String>{};

  // Loop input untuk 5 mahasiswa
  for (int i = 1; i <= 5; i++) {
    stdout.write("Masukkan nama mahasiswa ke-$i: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan nilai ujian $nama: ");
    int nilai = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;

    // Tentukan kategori dengan if/else
    String kategori;
    if (nilai >= 80) {
      kategori = 'A';
    } else if (nilai >= 60) {
      kategori = 'B';
    } else {
      kategori = 'C';
    }

    // Simpan ke map
    mahasiswa[nama ?? 'Mahasiswa $i'] = kategori;
  }

  // Tampilkan hasil akhir
  print("\n=== Hasil Kategori Nilai Mahasiswa ===");
  mahasiswa.forEach((nama, kategori) {
    print("Nama: $nama, Kategori: $kategori");
  });
}
