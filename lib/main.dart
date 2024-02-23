import 'package:flutter/material.dart';
import 'package:notes_app/helper/constants.dart';
import 'package:notes_app/views/editnoteview.dart';
import 'package:notes_app/views/noteview.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  Hive.initFlutter();
  Hive.openBox(notesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {const EditNoteView().id: (context) => const EditNoteView()},
        theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xff2F2F2F),
            brightness: Brightness.dark,
            fontFamily: "Poppins"),
        home: const NoteView());
  }
}
