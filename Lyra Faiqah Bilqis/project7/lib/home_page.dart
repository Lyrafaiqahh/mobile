import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> mataKuliah = [
    'Manajemen Rantai Pasok',
    'Manajemen Proyek Sistem Informasi',
    'Perencanaan Sumber Daya',
    'Penjaminan Mutu Perangkat Lunak',
    'Audit Sistem Informasi',
    'Pemrograman Mobile',
    'Kecerdasan Bisnis',
    'Metodologi Penelitian',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Bagian profil
          Container(
            color: Colors.teal[50],
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Lyra Faiqah Bilqis',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('NIM: 2341760013'),
                      Text('Teknologi Informasi - Politeknik Negeri Malang'),
                    ],
                  ),
                )
              ],
            ),
          ),

          // Judul Daftar Mata Kuliah
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Mata Kuliah Semester 5',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal)),
          ),

          // ListView Daftar Mata Kuliah
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: mataKuliah.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(Icons.book, color: Colors.teal),
                    title: Text(mataKuliah[index]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
