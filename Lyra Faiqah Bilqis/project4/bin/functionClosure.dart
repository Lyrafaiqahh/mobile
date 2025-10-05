import 'dart:io';

Function buatHitungDiskon() {
  double diskon = 0;

  // closure function
  return () {
    diskon += 0.05; // naik 5% setiap dipanggil
    if (diskon > 1) diskon = 1; // max 100%
    return diskon;
  };
}

void main() {
  // 4. Function closure diskon bertingkat
  var hitungDiskon = buatHitungDiskon();

  print('Diskon pertama: ${(hitungDiskon() * 100).toStringAsFixed(0)}%');
  print('Diskon kedua: ${(hitungDiskon() * 100).toStringAsFixed(0)}%');
  print('Diskon ketiga: ${(hitungDiskon() * 100).toStringAsFixed(0)}%');
}

