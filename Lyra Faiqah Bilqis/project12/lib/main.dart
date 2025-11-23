// // // import 'User.dart';
// // // void main() {
// // //   print('=== DEBUG: Check JSON Structure ===');
  
// // //   // Object Dart ke JSON
// // //   User user = User(
// // //     id: 1,
// // //     name: 'Lyra Faiqah Bilqis',
// // //     email: 'lyrafaiqah@gmail.com',
// // //     createdAt: DateTime.now(),
// // //   ); 

// // //   Map<String, dynamic> userJson = user.toJson();
// // //   print('User.toJson() result : $userJson');
// // //   print('Field names: ${userJson.keys.toList()}');

// // //   print('\n=== TEST: JSON to Object ===');

// // //   // JSON ke Object Dart
// // //   Map<String, dynamic> jsonData = {
// // //     'id': 2,
// // //     'name': 'Lyly cantik',
// // //     'email': 'lyrafaiqahb@gmail.com',
// // //     'created_at': '2024-06-01T10:00:00Z',
// // //   };


// // // // Debug: Print JSON structure
// // // print( 'JSON data to parse: $jsonData');
// // // print('JSON keys: ${jsonData.keys.toList()}');
// // // print( 'id: ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
// // // print('name: ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
// // // print('email: ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
// // // print('created_at: ${jsonData['created_at']} (type: ${jsonData['created_at'].runtimeType})',

// // // );

// // // try {
// // //   User userFromJson = User.fromJson(jsonData);
// // //   print('SUCCESS: User from JSON: $userFromJson');
// // // } catch (e, stack) {
// // //   print('ERROR: $e');
// // //   print('STACK TRACE: $stack');
// // // }

// // // print ('\n=== TEST: Handle Missing Field ===');

// // // // Test dengan missing field
// // // Map<String, dynamic> incompleteJson = {
// // //   'id': 3,
// // //   //'name': 'missing
// // //    'email': 'test@example.com',
// // //   // 'createdAt': missing
// // // };

// // // try {
// // //   User userFromIncomplete = User.fromJson(incompleteJson);
// // //   print('User from incomplete JSON: $userFromIncomplete');
// // // } catch (e) {
// // //   print('ERROR with incomplete JSON: $e');
// // // } }


// // import 'User.dart';

// // void main() {
// //   print('=== DEBUG: Check JSON Structure ===');

// //   // Object Dart ke JSON
// //   User user = User(
// //     id: 1,
// //     name: 'lyra faiqah bilqis',
// //     email: 'lyrafaiqah@gmail.com',
// //     createdAt: DateTime.now(),
// //   ); // User

// //   Map<String, dynamic> userJson = user.toJson();
// //   print('User.toJson() result: $userJson');
// //   print('Field names: ${userJson.keys.toList()}');

// //   print('\n=== TEST: JSON to Object ===');

// //   // 🟩 GUNAKAN FIELD NAMES YANG SAMA DENGAN toJson() RESULT
// //   Map<String, dynamic> jsonData = {
// //     'id': 2,
// //     'name': 'lyly cantik',
// //     'email': 'lyrafaiqahb@gmail.com',
// //     'createdAt': '2024-01-01T10:00:00.000Z', // Perhatikan casing!
// //   };

// // // Debug: Print JSON structure
// // print('JSON data to parse: $jsonData');
// // print('JSON keys: ${jsonData.keys.toList()}');
// // print('id : ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
// // print('name : ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
// // print('email : ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
// // print('createdAt : ${jsonData['createdAt']} (type: ${jsonData['createdAt'].runtimeType})',);

// // try {
// //   User userFromJson = User.fromJson(jsonData);
// //   print('✔ SUCCESS: User from JSON: $userFromJson');
// // } catch (e, stack) {
// //   print('✖ ERROR: $e');
// //   print('Stack trace: $stack');
// // }

// // print('\n=== TEST: Handle Missing Fields ===');

// // // Test dengan missing fields
// // Map<String, dynamic> incompleteJson = {
// //   'id': 3,
// //   'name': 'missing',
// //   'email': 'test@example.com',
// //   // 'createdAt': missing
// // };

// // try {
// //   User userFromIncomplete = User.fromJson(incompleteJson);
// //   print('User from incomplete JSON: $userFromIncomplete');
// // } catch (e) {
// //   print('Error with incomplete JSON: $e');
// // }
// // }





// // import 'User.dart';

// // void main() {
// //   print('=== DEBUG: Check JSON Structure ===');

// //   // Object Dart ke JSON
// //   User user = User(
// //     id: 1,
// //     name: 'lyra faiqah bilqis',
// //     email: 'lyrafaiqah@gmail.com',
// //     createdAt: DateTime.now(),
// //   );

// //   Map<String, dynamic> userJson = user.toJson();
// //   print('User.toJson() result: $userJson');
// //   print('Field names: ${userJson.keys.toList()}');

// //   print('\n=== TEST: JSON to Object ===');

// //   // JSON yang akan diuji
// //   Map<String, dynamic> jsonData = {
// //     'id': 2,
// //     'name': 'lyly cantik',
// //     'email': 'lyrafaiqahb@gmail.com',
// //     'created_At': '2024-01-01T10:00:00.000Z', // sesuaikan dengan User.dart!
// //   };

// //   // Debug: Print JSON structure
// //   print('JSON data to parse: $jsonData');
// //   print('JSON keys: ${jsonData.keys.toList()}');
// //   print('id: ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
// //   print('name: ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
// //   print('email: ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
// //   print(
// //       'created_At: ${jsonData['created_At']} (type: ${jsonData['created_At'].runtimeType})');

// //   try {
// //     User userFromJson = User.fromJson(jsonData);
// //     print('✓ SUCCESS: User from JSON: $userFromJson');
// //   } catch (e, stack) {
// //     print('✘ ERROR: $e');
// //     print('Stack trace: $stack');
// //   }

// //   print('\n==== TEST: Handle Missing Fields ====\n');

// //   // Test dengan missing fields
// //   Map<String, dynamic> incompleteJson = {
// //     'id': 3,
// //     // 'name': 'missing',
// //      'email': 'test@example.com',
// //     // 'createdAt': missing
// //   };

// //   try {
// //     User userFromIncomplete = User.fromJson(incompleteJson);
// //     print('User from incomplete JSON: $userFromIncomplete');
// //   } catch (e) {
// //     print('Error with incomplete JSON: $e');
// //   }
// // }





// // import 'package:flutter/material.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:intl/intl.dart';

// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   final prefs = PreferenceService();
// //   await prefs.init();
// //   runApp(LyraApp());
// // }

// // class LyraApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Profile Demo',
// //       theme: ThemeData(primarySwatch: Colors.blue),
// //       home: ProfilePage(),
// //     );
// //   }
// // }

// // class PreferenceService {
// //   static final PreferenceService _instance = PreferenceService._internal();
// //   factory PreferenceService() => _instance;
// //   PreferenceService._internal();

// //   late SharedPreferences _prefs;

// //   Future<void> init() async {
// //     _prefs = await SharedPreferences.getInstance();
// //   }

// //   Future<bool> setString(String key, String value) async =>
// //       await _prefs.setString(key, value);
// //   String? getString(String key) => _prefs.getString(key);

// //   Future<bool> setInt(String key, int value) async =>
// //       await _prefs.setInt(key, value);
// //   int? getInt(String key) => _prefs.getInt(key);

// //   Future<bool> remove(String key) async => await _prefs.remove(key);
// //   Future<bool> clear() async => await _prefs.clear();
// // }

// // class ProfilePage extends StatefulWidget {
// //   @override
// //   _ProfilePageState createState() => _ProfilePageState();
// // }

// // class _ProfilePageState extends State<ProfilePage> {
// //   final PreferenceService _prefs = PreferenceService();
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();

// //   String? _savedName;
// //   String? _savedEmail;
// //   String? _lastUpdated;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _loadUserData();
// //   }

// //   Future<void> _saveUserData() async {
// //     await _prefs.setString('user_name', _nameController.text);
// //     await _prefs.setString('user_email', _emailController.text);
// //     await _prefs.setInt('last_update', DateTime.now().millisecondsSinceEpoch);

// //     await _loadUserData();

// //     ScaffoldMessenger.of(
// //       context,
// //     ).showSnackBar(
// //       SnackBar(content: Text('Data saved successfully!')),
// //     );
// //   }

// //   Future<void> _loadUserData() async {
// //     await _prefs.init();

// //     setState(() {
// //       _nameController.text = _prefs.getString('user_name') ?? '';
// //       _emailController.text = _prefs.getString('user_email') ?? '';

// //       _savedName = _prefs.getString('user_name');
// //       _savedEmail = _prefs.getString('user_email');

// //       final lastUpdateMillis = _prefs.getInt('last_update');
// //       if (lastUpdateMillis != null) {
// //         final dt = DateTime.fromMillisecondsSinceEpoch(lastUpdateMillis);
// //         _lastUpdated = DateFormat('dd MMM yyyy, HH:mm').format(dt);
// //       }
// //     });
// //   }

// //  @override
// // Widget build(BuildContext context) {
// //   return Scaffold(
// //     appBar: AppBar(title: Text('Profile')),
// //     body: Padding(
// //       padding: EdgeInsets.all(16.0),
// //       child: Column(
// //         children: [
// //           // Input form
// //           TextField(
// //             controller: _nameController,
// //             decoration: InputDecoration(labelText: 'Name'),
// //           ), // TextField
// //           TextField(
// //             controller: _emailController,
// //             decoration: InputDecoration(labelText: 'Email'),
// //           ), // TextField
// //           SizedBox(height: 20),
// //           ElevatedButton(
// //             onPressed: _saveUserData,
// //             child: Text('Save'),
// //           ), // ElevatedButton
// //           Divider(height: 40),

// //           // Data yang disimpan
// //           Align(
// //             alignment: Alignment.centerLeft,
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   'Data Tersimpan:',
// //                   style: TextStyle(
// //                     fontWeight: FontWeight.bold,
// //                     fontSize: 16,
// //                     color: Colors.blueAccent,
// //                   ),
// //                 ), // TextStyle
// //                 SizedBox(height: 8),
// //                 Text('Nama: ${_savedName ?? '-'}'),
// //                 Text('Email: ${_savedEmail ?? '-'}'),
// //                 Text('Terakhir diperbarui: ${_lastUpdated ?? '-'}'),
// //               ],
// //             ),
// //           ), // Align
// //         ],
// //       ), // Column
// //     ), // Padding
// //   ); // Scaffold
// // }
// // }



// import 'dart:io';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as path;

// class FileService {
//   Future<Directory> get documentDirectory async {
//     return await getApplicationDocumentsDirectory();
//   }

//   // Simpan data ke file (String)
// Future<File> writeFile(String fileName, String content) async {
//   final Directory dir = await documentDirectory;
//   final File file = File(path.join(dir.path, fileName));
//   return file.writeAsString(content);
// }

// // Baca data dari file
// Future<String> readFile(String fileName) async {
//   try {
//     final Directory dir = await documentDirectory;
//     final File file = File(path.join(dir.path, fileName));
//     return await file.readAsString();
//   } catch (e) {
//     return '';
//   }
// }

// // // Simpan object sebagai JSON
// // Future<File> writeJson(String fileName, Map<String, dynamic> json) async {
// //   final String content = jsonEncode(json);
// //   return writeFile(fileName, content);
// // }

// // // Baca JSON dari file
// // Future<Map<String, dynamic>> readJson(String fileName) async {
// //   try {
// //     final String content = await readFile(fileName);
// //     return jsonDecode(content);
// //   } catch (e) {
// //     return {};
// //   }
// // }

// // Cek apakah file ada
// Future<bool> fileExists(String fileName) async {
// final Directory dir = await documentDirectory;
// final File file = File(path.join(dir.path, fileName));
// return file.exists();

// }

// // Hapus file
// Future<void> deleteFile(String fileName) async {
// final Directory dir = await documentDirectory;
// final File file = File(path.join(dir.path, fileName));
// if (await file. exists()) {
//   await file.delete();
// }
// } 
// }


// class DirectoryService {
//   final FileService _fileService = FileService();

// Future<Directory> createDirectory(String dirName) async {
//   final Directory appDir = await _fileService.documentDirectory;
//   final Directory newDir = Directory(path.join(appDir.path, dirName));
//   if (!await newDir.exists()) {
//     await newDir.create(recursive: true);
//   }
//   return newDir;
// }

// Future<List<FileSystemEntity>> listFiles(String dirName) async {
//   final Directory dir = await createDirectory(dirName);
//   return dir.list().toList();
// }

// Future<void> deleteDirectory(String dirName) async {
//   final Directory appDir = await _fileService.documentDirectory;
//   final Directory dir = Directory(path.join(appDir.path, dirName));
//   if (await dir.exists()) {
//     await dir.delete(recursive: true);
//   }
// }
// }


// class NoteService {
//   final DirectoryService _diService  = DirectoryService();
//   final String _notesDir = 'notes';

//   Future<void> saveNote({
//     required String title,
//     required String content,
//   }) async {
//     final Directory notesDir = await _diService.createDirectory(_notesDir);
    
//     final String fileName =
//         '${DateTime.now().millisecondsSinceEpoch}.json';
//     final File file = File(path.join(notesDir.path, fileName));
    
//     final noteData = {
//       'title': title,
//       'content': content,
//       'created_at': DateTime.now().toIso8601String(),
//     };

//     await file.writeAsString(jsonEncode(noteData));
//   }

//   Future<List<Map<String, dynamic>>> getAllNotes() async {
//     final Directory notesDir = await _diService.createDirectory(_notesDir);
//     final List<FileSystemEntity> files = await notesDir.list().toList();

//   List<Map<String, dynamic>> notes = [];
// for (var entity in files) {
//   if (entity is File && entity.path.endsWith('.json')) {
//     final content = await entity.readAsString();
//     final data = jsonDecode(content);
//     data['file_path'] = entity.path;
//     notes.add(data);
//   }
// }

// // Urutkan dari terbaru
// notes.sort(
//   (a, b) =>
//       b['created_at'].toString().compareTo(a['created_at'].toString()),
// );

// return notes;
//   }
    
// Future<void> deleteNoteByPath(String filePath) async {
//   final File file = File(filePath);
//   if (await file.exists()) {
//     await file.delete();
//   }
// }
// }

// ///
// /// =============================================================
// /// UI: Flutter Notes App
// /// =============================================================
// /// Run | Debug | Profile
// void main() {
//   runApp(NotesLyraApp());
// }

// class NotesLyraApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Notes (Local File)',
//       theme: ThemeData(primarySwatch: Colors.indigo),
//       home: NotesPage(),
//     ); // MaterialApp
//   }
// }

// class NotesPage extends StatefulWidget {
//   @override
//   _NotesPageState createState() => _NotesPageState();
// }

// class _NotesPageState extends State<NotesPage> {
//   final NoteService _noteService = NoteService();
//   List<Map<String, dynamic>> _notes = [];

//   @override
//   void initState() {
//     super.initState();
//     _loadNotes();
//   }

//   Future<void> _loadNotes() async {
//     final notes = await _noteService.getAllNotes();
//     setState(() => _notes = notes);
//   }

//   Future<void> _addNote() async {
//     final result = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => AddNotePage()),
//     );
//     if (result == true) {
//       _loadNotes();
//     }
//   }

//   Future<void> _deleteNote(String filePath) async {
//     await _noteService.deleteNoteByPath(filePath);
//     _loadNotes();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('My Notes')),
//       body: _notes.isEmpty
//           ? Center(child: Text('Belum ada catatan.'))
//           : ListView.builder(
//               itemCount: _notes.length,
//               itemBuilder: (context, index) {
//                 final note = _notes[index];
//                 return Card(
//                   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//                   child: ListTile(
//                     title: Text(note['title']),
//                     subtitle: Text(
//                       note['content'],
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     onTap: () => Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => NoteDetailPage(note: note),
//                       ),
//                     ),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete, color: Colors.red),
//                       onPressed: () => _deleteNote(note['file_path']),
//                     ),
//                   ),
//                 );
//               },
//             ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _addNote,
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// } // END of _NotesPageState


// ///
// /// UI: AddNotePage – form untuk menulis note baru
// ///
// class AddNotePage extends StatefulWidget {
//   @override
//   _AddNotePageState createState() => _AddNotePageState();
// }

// class _AddNotePageState extends State<AddNotePage> {
//   final NoteService _noteService = NoteService();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _contentController = TextEditingController();

//   Future<void> _saveNote() async {
//     if (_titleController.text.isEmpty || _contentController.text.isEmpty) {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(SnackBar(content: Text('Isi semua field dulu!')));
//       return;
//     }

//     await _noteService.saveNote(
//       title: _titleController.text,
//       content: _contentController.text,
//     );

//     ScaffoldMessenger.of(
//       context,
//     ).showSnackBar(SnackBar(content: Text('Catatan disimpan!')));
//     Navigator.pop(context, true);
//   }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(title: Text('Catatan Baru')),
//     body: Padding(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         children: [
//           TextField(
//             controller: _titleController,
//             decoration: InputDecoration(labelText: 'Judul'),
//           ), // TextField
//           SizedBox(height: 10),
//           Expanded(
//             child: TextField(
//               controller: _contentController,
//               decoration: InputDecoration(labelText: 'Isi Catatan'),
//               maxLines: null,
//               expands: true,
//               textAlignVertical: TextAlignVertical.top,
//             ), // TextField
//           ), // Expanded
//           SizedBox(height: 20),
//           ElevatedButton.icon(
//             icon: Icon(Icons.save),
//             label: Text('Simpan'),
//             onPressed: _saveNote,
//           ), // ElevatedButton.icon
//         ],
//       ),
//     ), // Padding
//   ); // Scaffold
// }
// }

// ///
// /// UI: NoteDetailPage – menampilkan isi note
// /// ======================================================
// ///
// class NoteDetailPage extends StatelessWidget {
//   final Map<String, dynamic> note;
//   const NoteDetailPage({required this.note});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(note['title'] ?? 'Note')),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Text(note['content'] ?? ''),
//       ), // Padding
//     ); // Scaffold
//   }
// }

  

   




// // class UserDataService {
// //   final FileService _fileService = FileService() ;
// //   final String _fileName = 'user_data.json';

// // Future<void> saveUserData({
// // required String name,
// // required String email,
// // int? age,
// // } ) async {
// // final Map<String, dynamic> userData = {
// // 'name': name,
// // 'email': email,
// // 'age': age ?? 0,
// // 'last_update': DateTime. now() . toIso8601String(),
// // };
// // await _fileService.writeJson(_fileName, userData);
// // }

// // Future<Map<String, dynamic>?> readUserData() async {
// // final exists = await _fileService.fileExists(_fileName);
// // if (!exists) return null;

// // final Map<String, dynamic> data = await _fileService.readJson(_fileName); ;
// // return data. isNotEmpty ? data : null;
// // }

// // Future<void> deleteUserData() async {
// //   await _fileService.deleteFile(_fileName); 
// //   }

// // Future<bool> hasUserData() async {
// // return await _fileService.fileExists(_fileName); 
// // }
// // }

// // void main() {
// //   runApp(LyraApp());
// // }

// // class LyraApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp ( 
// //       title: 'User Data JSON Demo',
// //       theme: ThemeData(
// //         primarySwatch: Colors.teal),
// //         home: UserProfilePage(),
// //     );
// //   }
// // }

// // class UserProfilePage extends StatefulWidget {
// //   @override
// //   _UserProfilePageState createState() => _UserProfilePageState();
// // }

// // class _UserProfilePageState extends State<UserProfilePage> {
// //   final UserDataService _userService = UserDataService();
// //   final TextEditingController _nameController = TextEditingController();
// //   final TextEditingController _emailController = TextEditingController();
// //   final TextEditingController _ageController = TextEditingController();

// //   Map<String, dynamic>? _savedData;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _loadUserData();
// //   }

// //   Future<void> _loadUserData() async {
// //     final data = await _userService.readUserData();
// //       setState(() {
// //         _savedData = data;
// //       });
// //     }

// //     Future<void> _saveUserData() async {
// //       await _userService.saveUserData(
// //         name: _nameController.text.trim(),
// //         email: _emailController.text.trim(),
// //         age: int.tryParse(_ageController.text),
// //       );

// //       ScaffoldMessenger.of(
// //         context,
// //         ).showSnackBar(SnackBar(content: Text('User data saved successfully!')));
// //       await _loadUserData();
// //   }

// //   Future<void> _deleteUserData() async {
// //     await _userService.deleteUserData();
// //     setState(() => _savedData = null);
// //     ScaffoldMessenger.of(
// //       context,
// //       ).showSnackBar(SnackBar(content: Text('User data deleted.')));
// //   }


// // @override
// // Widget build(BuildContext context) {
// //   return Scaffold(
// //     appBar: AppBar(title: Text('Profil User (File JSON)')),
// //     body: SingleChildScrollView(
// //       padding: EdgeInsets.all(16),
// //       child: Column(
// //         children: [
// //           // FORM INPUT
// //           TextField(
// //             controller: _nameController,
// //             decoration: InputDecoration(
// //               labelText: 'Nama',
// //               border: OutlineInputBorder(),
// //             ), // InputDecoration
// //           ), // TextField
// //           SizedBox(height: 10),

// //           TextField(
// //             controller: _emailController,
// //             decoration: InputDecoration(
// //               labelText: 'Email',
// //               border: OutlineInputBorder(),
// //             ), // InputDecoration
// //           ), // TextField
// //           SizedBox(height: 10),

// //           TextField(
// //             controller: _ageController,
// //             decoration: InputDecoration(
// //               labelText: 'Usia',
// //               border: OutlineInputBorder(),
// //             ), // InputDecoration
// //             keyboardType: TextInputType.number,
// //           ), // TextField

// //           SizedBox(height: 20),
       
// //         // BUTTONS
// // Row(
// //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //   children: [
// //     ElevatedButton.icon(
// //       icon: Icon(Icons.save),
// //       label: Text('Simpan'),
// //       onPressed: _saveUserData,
// //     ), // ElevatedButton.icon

// //     ElevatedButton.icon(
// //       icon: Icon(Icons.delete),
// //       label: Text('Hapus'),
// //       style: ElevatedButton.styleFrom(
// //         backgroundColor: Colors.redAccent,
// //       ),
// //       onPressed: _deleteUserData,
// //     ),
// //   ],
// // ),

// // SizedBox(height: 30),
// // Divider(),

// // // TAMPILAN DATA YANG DISIMPAN
// // _savedData == null
// //     ? Text(
// //         'Belum ada data tersimpan.',
// //         style: TextStyle(color: Colors.grey),
// //       ) // Text
// //     : Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             '📌 Data Tersimpan',
// //             style: TextStyle(
// //               fontSize: 16,
// //               fontWeight: FontWeight.bold,
// //               color: Colors.teal,
// //             ), // TextStyle
// //           ), // Text

// //           SizedBox(height: 8),

// //           _buildDataRow('Nama', _savedData!['name']),
// //           _buildDataRow('Email', _savedData!['email']),
// //           _buildDataRow('Usia', _savedData!['age'].toString()),
// //           _buildDataRow(
// //             'Update Terakhir',
// //             _savedData!['last_update'],
// //           ),
// //         ],
// //       ), // Column

// //         ],
// //       ),
// //     ),
// //   );
// // }

// // Widget _buildDataRow(String label, String value) {
// //   return Padding(
// //     padding: const EdgeInsets.symmetric(vertical: 4),
// //     child: Row(
// //       children: [
// //         Text('$label: ', style: TextStyle(fontWeight: FontWeight.bold)),
// //           Expanded(child: Text(value)),
// //       ],
// //           ), 
// //         ); 
// // }
// // }



import 'package:encrypt/encrypt.dart';
import 'dart:convert';

void main() {
  //
  // ✨ 1. Buat key dan IV (harus panjangnya sesuai)
  //
  final key = Key.fromUtf8(
      '0123456789ABCDEF0123456789ABCDEF'); // 32 karakter = 256-bit key
  final iv = IV.fromUtf8(
      '0123456789ABCDEF'); // 16 karakter = 128-bit IV

  //
  // ✨ 2. Buat encrypter AES
  //
  final encrypter = Encrypter(AES(key, mode: AESMode.cbc));

  //
  // ✨ 3. Data yang ingin dienkripsi
  //
  final plainText = 'Ini rahasia besar saya 😏';

  //
  // ✨ Enkripsi
  //
  final encrypted = encrypter.encrypt(plainText, iv: iv);
  print('🔐 Encrypted (base64) : ${encrypted.base64}');

  //
  // ✨ Dekripsi
  //
  final decrypted = encrypter.decrypt(encrypted, iv: iv);
  print('🔓 Decrypted text: $decrypted');

  //
  // ✨ Bisa juga enkripsi data JSON
  //
  final data = {'user': 'luqman', 'token': 'abc123xyz'};
  final jsonString = jsonEncode(data);

  final encryptedJson = encrypter.encrypt(jsonString, iv: iv);
  print('🔐 Encrypted JSON : ${encryptedJson.base64}');

  final decryptedJson = encrypter.decrypt(encryptedJson, iv: iv);
  print('🔓 Decrypted JSON : $decryptedJson');
}
