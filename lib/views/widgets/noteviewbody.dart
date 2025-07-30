import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notescubit/notescubit.dart';
import 'package:notes_app/views/widgets/customappbar.dart';
import 'package:notes_app/views/widgets/noteslistview.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 60),
        CustomAppBar(
          onpressed: () {
            // BlocProvider.of<NotesCubit>(context).deleteNotes();
          },
          iconData: Icons.search,
          title: 'Notes',
        ),
        const NotesListView()
      ],
    );
  }
}
