import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(LyraApp());
}

//
// 🌸 TUGAS NOMOR 3: Navigasi antar halaman
//
class LyraApp extends StatelessWidget { // Stateless = halaman tidak berubah
  const LyraApp({super.key});  //

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile & Counter App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: MainPage(), // Halaman utama yang berisi navigasi ke Profil & Counter
      debugShowCheckedModeBanner: false,
    );
  }
}

//
// 🌸 TUGAS NOMOR 3: Halaman utama dengan navigasi BottomNavigationBar
//
class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // Menyimpan index halaman aktif

  // Daftar halaman: Profil & Counter
  final List<Widget> _pages = [
    ProfilePage(), // Halaman profil (Nomor 1)
    CounterPage(), // Halaman counter (Nomor 2)
  ];

  // Fungsi untuk mengganti halaman saat item di BottomNavigationBar diklik
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Menampilkan halaman sesuai index aktif
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Counter',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

//
// 🌸 TUGAS NOMOR 1: Halaman Profil (StatelessWidget)
//
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Mahasiswa')),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.teal[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlutterLogo(size: 80), // Logo Flutter
              const SizedBox(height: 20),
              // Foto profil
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'),
                onBackgroundImageError: (_, __) => const Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 100,
                ),
              ),
              const SizedBox(height: 20),
              // Nama dan data diri
              Text(
                'Lyra Faiqah Bilqis',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('NIM: 2341760013 - JTI SIB 3B'),
              const SizedBox(height: 20),
              // Email
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.email, color: Colors.teal),
                  SizedBox(width: 10),
                  Text('lyrafaiqah@gmail.com'),
                ],
              ),
              const SizedBox(height: 10),
              // Telepon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.phone, color: Colors.teal),
                  SizedBox(width: 10),
                  Text('+62 812-3456-7890'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
// 🌸 TUGAS NOMOR 2: Halaman Counter (StatefulWidget)
//
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0; // Nilai angka yang ditampilkan

  // Fungsi menambah angka
  void _increment() {
    setState(() {
      _count++;
    });
  }

  // Fungsi mengurangi angka
  void _decrement() {
    setState(() {
      _count--;
    });
  }

  // Fungsi mereset angka ke 0
  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Angka saat ini:', style: GoogleFonts.poppins(fontSize: 18)),
            Text(
              '$_count',
              style: GoogleFonts.poppins(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 20),
            // Tombol +, -, dan Reset
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: _increment, child: const Text('+')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: _decrement, child: const Text('-')),
                const SizedBox(width: 10),
                OutlinedButton(onPressed: _reset, child: const Text('Reset')),
              ],
            ),
          ],
        ),
      ),
      // Tombol melayang untuk menambah angka
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
