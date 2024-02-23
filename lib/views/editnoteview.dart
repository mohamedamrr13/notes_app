import 'package:flutter/material.dart';
import 'package:notes_app/views/editnoteviewbody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  final String id = 'EditNote';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
