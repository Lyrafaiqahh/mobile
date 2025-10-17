import 'package:flutter/material.dart';
import 'routes.dart';
import 'home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          // Menampilkan isi dari home_page.dart
          Expanded(child: HomePage()),

          // Tombol navigasi ke Galeri
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, Routes.gallery);
              },
              icon: Icon(Icons.photo),
              label: Text('Lihat Galeri'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
