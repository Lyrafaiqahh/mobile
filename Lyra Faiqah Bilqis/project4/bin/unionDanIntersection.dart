import 'dart:io';

void main() {
  print("Masukkan set A (pisahkan dengan koma): ");
  var inputA = stdin.readLineSync()!;
  var setA = inputA.split(',').map((e) => e.trim()).toSet();

  print("Masukkan set B (pisahkan dengan koma): ");
  var inputB = stdin.readLineSync()!;
  var setB = inputB.split(',').map((e) => e.trim()).toSet();

  print("Set A: $setA");
  print("Set B: $setB");
  print("Union: ${setA.union(setB)}");
  print("Intersection: ${setA.intersection(setB)}");
}
