  // ignore_for_file: non_constant_identifier_names

import 'package:hive/hive.dart';

part 'userModel.g.dart';

@HiveType(typeId: 0) // This is Model Class Type ID
class UserModel extends HiveObject {
  @HiveField(0) //This is Field Index
  late String user_id;

  @HiveField(1) //This is Field Index
  late String user_name;

  @HiveField(2) //This is Field Index
  late String email;
}
