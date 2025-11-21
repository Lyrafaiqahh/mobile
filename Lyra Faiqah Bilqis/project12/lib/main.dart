import 'User.dart';
void main() {
  print('=== DEBUG: Check JSON Structure ===');
  
  // Object Dart ke JSON
  User user = User(
    id: 1,
    name: 'Lyra Faiqah Bilqis',
    email: 'lyrafaiqah@gmail.com',
    createdAt: DateTime.now(),
  ); 

  Map<String, dynamic> userJson = user.toJson();
  print('User.toJson() result : $userJson');
  print('Field names: ${userJson.keys.toList()}');

  print('\n=== TEST: JSON to Object ===');

  // JSON ke Object Dart
  Map<String, dynamic> jsonData = {
    'id': 2,
    'name': 'Lyly cantik',
    'email': 'lyrafaiqahb@gmail.com',
    'created_at': '2024-06-01T10:00:00Z',
  };


// Debug: Print JSON structure
print( 'JSON data to parse: $jsonData');
print('JSON keys: ${jsonData.keys.toList()}');
print( 'id: ${jsonData['id']} (type: ${jsonData['id'].runtimeType})');
print('name: ${jsonData['name']} (type: ${jsonData['name'].runtimeType})');
print('email: ${jsonData['email']} (type: ${jsonData['email'].runtimeType})');
print('created_at: ${jsonData['created_at']} (type: ${jsonData['created_at'].runtimeType})',

);

try {
  User userFromJson = User.fromJson(jsonData);
  print('SUCCESS: User from JSON: $userFromJson');
} catch (e, stack) {
  print('ERROR: $e');
  print('STACK TRACE: $stack');
}

print ('\n=== TEST: Handle Missing Field ===');

// Test dengan missing field
Map<String, dynamic> incompleteJson = {
  'id': 3,
  //'name': 'missing
   'email': 'test@example.com',
  // 'createdAt': missing
};

try {
  User userFromIncomplete = User.fromJson(incompleteJson);
  print('User from incomplete JSON: $userFromIncomplete');
} catch (e) {
  print('ERROR with incomplete JSON: $e');
} }