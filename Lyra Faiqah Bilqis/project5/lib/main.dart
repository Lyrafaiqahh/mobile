import 'package:flutter/material.dart';

void main() {
  runApp(LyraApp());
}

class LyraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Lyra App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color(0xFF74A83C), // warna background hijau
          child: SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // AppBar custom
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Gelora - Isyana Sarasvati",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Georgia',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Gambar Isyana 1:1 ukuran kecil di tengah
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        width: 350,   // ukuran fix
                        height: 350,  // bikin 1:1
                        child: Image.network(
                          "https://i.scdn.co/image/ab67616d0000b2733fa0a90f04f3a889b343c28c",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Lirik mepet kanan
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Ha hahaha ha hahaha ha hahaha\n"
                      "Maraknya semangat bisa membuat kita terbelah\n"
                      "Sulit tentukan rasa mana yang nyata dan tak ada\n"
                      "Menombak salah arah dari berteman jadi bertentangan\n"
                      "Hingga kembali disaat dunia masih bergelora gelora\n\n"
                      "Na na na nanana na na na nanana\n"
                      "Maraknya semangat bisa membuat kita terbelah\n"
                      "Sulit tentukan rasa mana yang nyata dan tak ada\n"
                      "Menuang waktu kita seharusnya gunakan logika\n"
                      "Hapus segala ombak yang memisahkan kita\n\n"
                      "Na na na nanana na na na nanana\n"
                      "Tujukan kembali dirimu ke arah yang semestinya terpijak\n"
                      "Hilangkan pesona dan kembali bebas\n"
                      "Hapus semua duka lara\n"
                      "Berjalan dan tersenyumlah\n"
                      "Sesaat kembali ke masa\n"
                      "Yang dulu tlah sirna\n"
                      "Oh indah nya\n\n"
                      "Mari tetapkan hati kita mari bahagia (mari bahagia)\n"
                      "Janganlah banyak bicara kita jalani saja\n"
                      "Marilah tetapkan hati kita mari bahagia\n"
                      "Janganlah banyak bicara kita jalani saja\n\n"
                      "Na na na nanana na na na nanana",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Georgia',
                        height: 1.6,
                        shadows: [
                          Shadow(
                            color: Colors.black45,
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
