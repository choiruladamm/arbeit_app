
import 'package:arbeit_app/models/userModel.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<UserModel> getUsers()=> Hive.box('users');
}