// class User {
// final int id:
// final String name;
// final String email;
// final DateTime createdAt;

// User { {
// required this. id,
// required this.name,
// required this.email,
// required this.createdAt
// }};

// // Konversi dari JSuq ke Object Dart
// factory User.fromJson(Map<String, dynamic> json) {
// return User(
// id: json['id'], 
// name: json['name'],
// email: json['email'],
// createdAt: DateTime.parse(json['created_at']),
// );
// }

// // Konversi dari Object Dart ke JSON
// Map<String, dynamic> toJson() {
// return {
// 'id': id,
// 'name': name, 
// 'email': email,
// 'created_at': createdAt.toIso8601String(),
// };
// }
// }

import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable(explicitToJson: true, anyMap:true)
class User {
  @JsonKey(required: true, disallowNullValue: true)
  final int id;

  @JsonKey(required: true, disallowNullValue: true)
  final String name;

  @JsonKey(required: true, disallowNullValue: true)
  final String email;

  @JsonKey(
    name: 'created_at', 
    required: true, 
    disallowNullValue: true,
    toJson: _dateTimeToJson,
  )
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
  });

  static DateTime_parseDateTime(dynamic value){
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    if (value is String) return DateTime.parse(value);
    return DateTime.now();
  }

  static String _dateTimeToJson(DateTime date) => date.toIso8601String();
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  }