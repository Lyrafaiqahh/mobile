import 'package:flutter/material.dart';
import 'routes.dart';
import 'profile_page.dart';
import 'gallery_page.dart';

void main() {
  runApp(LyraApp());
}

class LyraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: Routes.profile,
      routes: {
        Routes.profile: (context) => ProfilePage(),
        Routes.gallery: (context) => GalleryPage(),
      },
    );
  }
}
