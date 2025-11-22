// // import 'User.dart';
// // void main() {
// //   print('=== DEBUG: Check JSON Structure ===');
  
// //   // Object Dart ke JSON
// //   User user = User(
// //     id: 1,
// //     name: 'Lyra Faiqah Bilqis',
// //     email: 'lyrafaiqah@gmail.com',
// //     createdAt: DateTime.now(),
// //   ); 

// //   Map<String, dynamic> userJson = user.toJson();
// //   print('User.toJson() result : $userJson');
// //   print('Field names: ${userJson.keys.toList()}');

// //   print('\n=== TEST: JSON to Object ===');

// //   // JSON ke Object Dart
// //   Map<String, dynamic> jsonData = {
// //     'id': 2,
// //     'name': 'Lyly cantik',
// //     'email': 'lyrafaiqahb@gmail.com',
// //     'created_at': '2024-06-01T10:00:00Z',
// //   };


// // // Debug: Print JSON structure
// // print( 'JSON data to parse: $jsonData');
// // print('JSON keys: ${jsonData.keys.toList()}');
// // print( 'id: ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
// // print('name: ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
// // print('email: ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
// // print('created_at: ${jsonData['created_at']} (type: ${jsonData['created_at'].runtimeType})',

// // );

// // try {
// //   User userFromJson = User.fromJson(jsonData);
// //   print('SUCCESS: User from JSON: $userFromJson');
// // } catch (e, stack) {
// //   print('ERROR: $e');
// //   print('STACK TRACE: $stack');
// // }

// // print ('\n=== TEST: Handle Missing Field ===');

// // // Test dengan missing field
// // Map<String, dynamic> incompleteJson = {
// //   'id': 3,
// //   //'name': 'missing
// //    'email': 'test@example.com',
// //   // 'createdAt': missing
// // };

// // try {
// //   User userFromIncomplete = User.fromJson(incompleteJson);
// //   print('User from incomplete JSON: $userFromIncomplete');
// // } catch (e) {
// //   print('ERROR with incomplete JSON: $e');
// // } }


// import 'User.dart';

// void main() {
//   print('=== DEBUG: Check JSON Structure ===');

//   // Object Dart ke JSON
//   User user = User(
//     id: 1,
//     name: 'lyra faiqah bilqis',
//     email: 'lyrafaiqah@gmail.com',
//     createdAt: DateTime.now(),
//   ); // User

//   Map<String, dynamic> userJson = user.toJson();
//   print('User.toJson() result: $userJson');
//   print('Field names: ${userJson.keys.toList()}');

//   print('\n=== TEST: JSON to Object ===');

//   // 🟩 GUNAKAN FIELD NAMES YANG SAMA DENGAN toJson() RESULT
//   Map<String, dynamic> jsonData = {
//     'id': 2,
//     'name': 'lyly cantik',
//     'email': 'lyrafaiqahb@gmail.com',
//     'createdAt': '2024-01-01T10:00:00.000Z', // Perhatikan casing!
//   };

// // Debug: Print JSON structure
// print('JSON data to parse: $jsonData');
// print('JSON keys: ${jsonData.keys.toList()}');
// print('id : ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
// print('name : ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
// print('email : ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
// print('createdAt : ${jsonData['createdAt']} (type: ${jsonData['createdAt'].runtimeType})',);

// try {
//   User userFromJson = User.fromJson(jsonData);
//   print('✔ SUCCESS: User from JSON: $userFromJson');
// } catch (e, stack) {
//   print('✖ ERROR: $e');
//   print('Stack trace: $stack');
// }

// print('\n=== TEST: Handle Missing Fields ===');

// // Test dengan missing fields
// Map<String, dynamic> incompleteJson = {
//   'id': 3,
//   'name': 'missing',
//   'email': 'test@example.com',
//   // 'createdAt': missing
// };

// try {
//   User userFromIncomplete = User.fromJson(incompleteJson);
//   print('User from incomplete JSON: $userFromIncomplete');
// } catch (e) {
//   print('Error with incomplete JSON: $e');
// }
// }





// import 'User.dart';

// void main() {
//   print('=== DEBUG: Check JSON Structure ===');

//   // Object Dart ke JSON
//   User user = User(
//     id: 1,
//     name: 'lyra faiqah bilqis',
//     email: 'lyrafaiqah@gmail.com',
//     createdAt: DateTime.now(),
//   );

//   Map<String, dynamic> userJson = user.toJson();
//   print('User.toJson() result: $userJson');
//   print('Field names: ${userJson.keys.toList()}');

//   print('\n=== TEST: JSON to Object ===');

//   // JSON yang akan diuji
//   Map<String, dynamic> jsonData = {
//     'id': 2,
//     'name': 'lyly cantik',
//     'email': 'lyrafaiqahb@gmail.com',
//     'created_At': '2024-01-01T10:00:00.000Z', // sesuaikan dengan User.dart!
//   };

//   // Debug: Print JSON structure
//   print('JSON data to parse: $jsonData');
//   print('JSON keys: ${jsonData.keys.toList()}');
//   print('id: ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
//   print('name: ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
//   print('email: ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
//   print(
//       'created_At: ${jsonData['created_At']} (type: ${jsonData['created_At'].runtimeType})');

//   try {
//     User userFromJson = User.fromJson(jsonData);
//     print('✓ SUCCESS: User from JSON: $userFromJson');
//   } catch (e, stack) {
//     print('✘ ERROR: $e');
//     print('Stack trace: $stack');
//   }

//   print('\n==== TEST: Handle Missing Fields ====\n');

//   // Test dengan missing fields
//   Map<String, dynamic> incompleteJson = {
//     'id': 3,
//     // 'name': 'missing',
//      'email': 'test@example.com',
//     // 'createdAt': missing
//   };

//   try {
//     User userFromIncomplete = User.fromJson(incompleteJson);
//     print('User from incomplete JSON: $userFromIncomplete');
//   } catch (e) {
//     print('Error with incomplete JSON: $e');
//   }
// }





import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenceService();
  await prefs.init();
  runApp(LyraApp());
}

class LyraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProfilePage(),
    );
  }
}

class PreferenceService {
  static final PreferenceService _instance = PreferenceService._internal();
  factory PreferenceService() => _instance;
  PreferenceService._internal();

  late SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async =>
      await _prefs.setString(key, value);
  String? getString(String key) => _prefs.getString(key);

  Future<bool> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);
  int? getInt(String key) => _prefs.getInt(key);

  Future<bool> remove(String key) async => await _prefs.remove(key);
  Future<bool> clear() async => await _prefs.clear();
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final PreferenceService _prefs = PreferenceService();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? _savedName;
  String? _savedEmail;
  String? _lastUpdated;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _saveUserData() async {
    await _prefs.setString('user_name', _nameController.text);
    await _prefs.setString('user_email', _emailController.text);
    await _prefs.setInt('last_update', DateTime.now().millisecondsSinceEpoch);

    await _loadUserData();

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(
      SnackBar(content: Text('Data saved successfully!')),
    );
  }

  Future<void> _loadUserData() async {
    await _prefs.init();

    setState(() {
      _nameController.text = _prefs.getString('user_name') ?? '';
      _emailController.text = _prefs.getString('user_email') ?? '';

      _savedName = _prefs.getString('user_name');
      _savedEmail = _prefs.getString('user_email');

      final lastUpdateMillis = _prefs.getInt('last_update');
      if (lastUpdateMillis != null) {
        final dt = DateTime.fromMillisecondsSinceEpoch(lastUpdateMillis);
        _lastUpdated = DateFormat('dd MMM yyyy, HH:mm').format(dt);
      }
    });
  }

 @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('Profile')),
    body: Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Input form
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ), // TextField
          TextField(
            controller: _emailController,
            decoration: InputDecoration(labelText: 'Email'),
          ), // TextField
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _saveUserData,
            child: Text('Save'),
          ), // ElevatedButton
          Divider(height: 40),

          // Data yang disimpan
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Data Tersimpan:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.blueAccent,
                  ),
                ), // TextStyle
                SizedBox(height: 8),
                Text('Nama: ${_savedName ?? '-'}'),
                Text('Email: ${_savedEmail ?? '-'}'),
                Text('Terakhir diperbarui: ${_lastUpdated ?? '-'}'),
              ],
            ),
          ), // Align
        ],
      ), // Column
    ), // Padding
  ); // Scaffold
}
}