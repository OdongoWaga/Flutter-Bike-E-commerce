import 'package:meta/meta.dart';

class User {
  dynamic id;
  String username;
  String email;
  String jwt;

  User(
      {@required this.id,
      @required this.username,
      @required this.email,
      @required this.jwt});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        username: json['username'],
        email: json['email'],
        jwt: json['jwt']);
  }
}
