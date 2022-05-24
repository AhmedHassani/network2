import 'package:hive/hive.dart';
part   'user.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveType(typeId: 0)
  String? name;

  @HiveType(typeId: 1)
  String ?username;

  @HiveType(typeId: 2)
  String ? password;

  User({this.name, this.username, this.password});
}