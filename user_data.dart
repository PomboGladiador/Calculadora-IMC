import 'package:hive/hive.dart';

part 'user_data.g.dart';

@HiveType(typeId: 0)
class UserData {
  @HiveField(0)
  String name;

  @HiveField(1)
  double weight;

  @HiveField(2)
  double height;

  @HiveField(3)
  double bmi;

  @HiveField(4)
  DateTime date;

  UserData({
    required this.name,
    required this.weight,
    required this.height,
    required this.bmi,
    required this.date,
  });
}
