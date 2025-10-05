import 'dart:io';

Function buatDiskon() {
  var diskon = 0;
  return () {
    diskon += 5; // setiap kali dipanggil naik 5%
    return diskon;
  };
}

void main() {
  var hitungDiskon = buatDiskon();

  print("Diskon pertama: ${hitungDiskon()}%");
  print("Diskon kedua: ${hitungDiskon()}%");
  print("Diskon ketiga: ${hitungDiskon()}%");
}

