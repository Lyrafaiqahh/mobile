import 'User.dart';
void main() {
  // Object Dart ke JSON
  User user = User(
    id: 1,
    name: 'Lyra Faiqah Bilqis',
    email: 'lyrafaiqah@gmail.com',
    createdAt: DateTime.now(),
  ); // User

  Map<String, dynamic> userJson = user.toJson();
  print('User ke JSON: $userJson');

  // JSON ke Object Dart
  Map<String, dynamic> jsonData = {
    'id': 2,
    'name': 'Lyly cantik',
    'email': 'lyrafaiqahb@gmail.com',
    'created_at': '2024-06-01T10:00:00Z',
  };

  User userFromJson = User.fromJson(jsonData);
  print('JSON ke User: ${userFromJson.name}');
}