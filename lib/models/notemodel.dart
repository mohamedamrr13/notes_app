import 'package:hive/hive.dart';
part 'notemodel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? subtitle;
  @HiveField(2)
  int? color;
  @HiveField(3)
  String? date;

  NoteModel({this.title, this.subtitle, this.color, this.date});
}
