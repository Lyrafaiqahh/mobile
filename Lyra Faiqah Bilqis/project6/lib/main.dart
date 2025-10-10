import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(LyraApp());
}

//
// 🌸 TUGAS NOMOR 3: Navigasi antar halaman
//
class LyraApp extends StatelessWidget { // Stateless = halaman tidak berubah
  const LyraApp({super.key}); // Constructor bawaan StatelessWidget, tidak punya state yang berubah

@override
Widget build(BuildContext context) { // Method utama untuk membangun tampilan UI
  return MaterialApp( // Widget dasar aplikasi Flutter dengan gaya Material Design
    title: 'My Profile & Counter App',
    theme: ThemeData( 
      primarySwatch: Colors.teal, // Warna utama aplikasi (hijau kebiruan)
      textTheme: GoogleFonts.poppinsTextTheme(), // Mengatur font teks menjadi Poppins
    ),
    home: MainPage(), // Halaman pertama yang ditampilkan saat app dijalankan
    debugShowCheckedModeBanner: false, // Menghilangkan label 'debug' di pojok kanan atas
  );
}
}

//
// 🌸 TUGAS NOMOR 3: Halaman utama dengan navigasi BottomNavigationBar
//
class MainPage extends StatefulWidget { // Stateful karena halaman bisa berubah (navigasi)
  @override
  State<MainPage> createState() => _MainPageState(); // Membuat state untuk menyimpan kondisi halaman
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // Menyimpan index halaman yang sedang aktif (0 = profil, 1 = counter)

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = [
    ProfilePage(), // Halaman Profil (tugas nomor 1)
    CounterPage(), // Halaman Counter (tugas nomor 2)
  ];

  // Fungsi yang dijalankan saat menu di BottomNavigationBar ditekan
  void _onItemTapped(int index) {
    setState(() { // Memicu rebuild UI agar halaman berubah
      _selectedIndex = index; // Ganti index aktif ke halaman yang dipilih
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Struktur dasar tampilan halaman
      body: _pages[_selectedIndex], // Menampilkan halaman sesuai dengan index yang dipilih
      bottomNavigationBar: BottomNavigationBar( // Menu navigasi di bawah layar
        items: const [ // Dua item menu: Profil dan Counter
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profil', // Label untuk menu profil
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate), 
            label: 'Counter', // Label untuk menu counter
          ),
        ],
        currentIndex: _selectedIndex, // Menandai menu mana yang sedang aktif
        onTap: _onItemTapped, // Menjalankan fungsi untuk ganti halaman saat menu ditekan
      ),
    );
  }
}


//
// 🌸 TUGAS NOMOR 1: Halaman Profil (StatelessWidget)
//
class ProfilePage extends StatelessWidget { // Stateless karena data profil tidak berubah
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Struktur utama tampilan halaman profil
      appBar: AppBar(title: const Text('Profil Mahasiswa')), 
      body: SingleChildScrollView( // Supaya bisa discroll kalau konten terlalu panjang
        child: Container(
          padding: const EdgeInsets.all(16), // Memberi jarak di dalam kontainer
          color: Colors.teal[50], // Warna latar belakang halaman
          child: Column( // Menyusun widget secara vertikal
            crossAxisAlignment: CrossAxisAlignment.center, // Semua konten di tengah
            children: [
              const FlutterLogo(size: 80), // Menampilkan logo Flutter
              const SizedBox(height: 20), // Jarak vertikal antar elemen

              // Foto profil
              CircleAvatar(
                radius: 60, 
                backgroundImage: AssetImage('assets/profile.jpg'), 
                onBackgroundImageError: (_, __) => const Placeholder( 
                  fallbackHeight: 100,
                  fallbackWidth: 100,
                ),
              ),

              const SizedBox(height: 20), // Jarak setelah foto

              // Nama dan data diri mahasiswa
              Text(
                'Lyra Faiqah Bilqis', 
                style: GoogleFonts.poppins( 
                  fontSize: 22,
                  fontWeight: FontWeight.bold, 
                ),
              ),
              Text('NIM: 2341760013 - JTI SIB 3B'), 
              const SizedBox(height: 20), // Jarak antar elemen

              // Baris untuk email
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Posisikan di tengah
                children: const [
                  Icon(Icons.email, color: Colors.teal), 
                  SizedBox(width: 10), // Jarak antara ikon dan teks
                  Text('lyrafaiqah@gmail.com'), 
                ],
              ),

              const SizedBox(height: 10), // Jarak antar baris

              // Baris untuk nomor telepon
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Posisikan di tengah
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
class CounterPage extends StatefulWidget { // Stateful karena angka bisa berubah saat tombol ditekan
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState(); // Membuat state untuk halaman ini
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0; // Menyimpan nilai angka yang sedang ditampilkan

  // Fungsi untuk menambah angka
  void _increment() {
    setState(() { // Memperbarui tampilan setiap kali nilai berubah
      _count++;
    });
  }

  // Fungsi untuk mengurangi angka
  void _decrement() {
    setState(() {
      _count--;
    });
  }

  // Fungsi untuk mengembalikan angka ke 0
  void _reset() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Struktur utama halaman Counter
      appBar: AppBar(title: const Text('Counter App')),
      body: Center( // Menempatkan konten di tengah layar
        child: Column( // Menyusun elemen secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Semua elemen di tengah secara vertikal
          children: [
            Text('Angka saat ini:', style: GoogleFonts.poppins(fontSize: 18)), // Teks penjelasan
            Text(
              '$_count', // Menampilkan nilai dari variabel _count
              style: GoogleFonts.poppins(
                fontSize: 48, 
                fontWeight: FontWeight.bold, 
                color: Colors.teal, 
              ),
            ),
            const SizedBox(height: 20), // Jarak antara angka dan tombol

            // Baris untuk tiga tombol (+, -, Reset)
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Semua tombol di tengah
              children: [
                ElevatedButton(onPressed: _increment, child: const Text('+')), // Tombol tambah
                const SizedBox(width: 10), // Jarak antar tombol
                ElevatedButton(onPressed: _decrement, child: const Text('-')), // Tombol kurang
                const SizedBox(width: 10),
                OutlinedButton(onPressed: _reset, child: const Text('Reset')), // Tombol reset angka ke 0
              ],
            ),
          ],
        ),
      ),

      // Tombol melayang (Floating Action Button) untuk menambah angka juga
      floatingActionButton: FloatingActionButton(
        onPressed: _increment, // Fungsi tambah angka
        child: const Icon(Icons.add), // Ikon tambah di dalam tombol
      ),
    );
  }
}

