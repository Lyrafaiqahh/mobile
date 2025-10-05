import 'dart:io';

void main() {
  // 2. Program menghitung union & intersection dari dua set
  Set<String> setA = {'apel', 'jeruk', 'mangga'};
  Set<String> setB = {'mangga', 'pisang', 'apel'};

  // Union = gabungan
  Set<String> union = setA.union(setB);

  // Intersection = irisan
  Set<String> intersection = setA.intersection(setB);

  print('Set A: $setA');
  print('Set B: $setB');
  print('Union: $union');
  print('Intersection: $intersection');
}