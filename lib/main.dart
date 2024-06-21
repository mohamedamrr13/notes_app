import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/addnotecubit.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/editnoteview.dart';
import 'package:notes_app/views/noteview.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter<NoteModel>(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddNoteCubit())],
      child: MaterialApp(
          routes: {const EditNoteView().id: (context) => const EditNoteView()},
          theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xff2F2F2F),
              brightness: Brightness.dark,
              fontFamily: "Poppins"),
          home: const NoteView()),
    );
  }
}
