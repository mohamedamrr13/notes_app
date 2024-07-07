import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notescubit/notescubit.dart';
import 'package:notes_app/cubits/notescubit/notesstates.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';
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
            BlocProvider.of<NotesCubit>(context).deleteNotes();
          },
          iconData: Icons.delete,
          title: 'Notes',
        ),
        const NotesListView()
      ],
    );
  }
}
