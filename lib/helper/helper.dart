import 'dart:ui';

import 'package:date_format/date_format.dart';

String kNotesBox = 'notesBox';

String todayDate() {
  return formatDate(DateTime.now(), [yyyy, '/', mm, '/', dd]);
}

List<Color> colorsList = const [
  Color(0xff156064),
  Color(0xff00C49A),
  Color(0xffF8E16C),
  Color(0xffFFC2B4),
  Color(0xffFB8F67)
];
