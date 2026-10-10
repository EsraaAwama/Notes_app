import 'package:hive/hive.dart';
part 'note_view_model.g.dart';//اسم الفايل يلي رح ينعملو generat
@HiveType(typeId: 0) //هاد الرقم خاص بهاد الكلاس
class NoteViewModel extends HiveObject {
  @HiveField(0)//ليس خاص بهاد الفيلد فقط لغير كلاس
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteViewModel({
    required this.title,
    required this.subtitle,
    required this.date, required this.color,
  });
}
