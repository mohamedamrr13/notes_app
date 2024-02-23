import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/noteslistview.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 60),
        CustomAppBar(
          iconData: Icons.delete,
          title: 'Notes',
        ),
        NotesListView()
      ],
    );
  }
}
