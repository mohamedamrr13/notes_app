import 'package:flutter/material.dart';
import 'package:notes_app/views/noteviewbody.dart';
import 'package:notes_app/widgets/floatingactionbutton.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'homepage';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
