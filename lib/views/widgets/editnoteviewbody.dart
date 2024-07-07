import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notescubit/notescubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/widgets/customappbar.dart';
import 'package:notes_app/views/widgets/customtextfield.dart';
import 'package:notes_app/views/widgets/edit_color_listview.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        CustomAppBar(
          onpressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.subtitle = subtitle ?? widget.note.subtitle;
            BlocProvider.of<NotesCubit>(context).fetchNotes();
            Navigator.pop(context);
          },
          iconData: Icons.check,
          title: 'Edit Note',
        ),
        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            hintText: 'Title',
            onChanged: (data) {
              title = data;
            },
            maxLines: 1,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField(
            hintText: 'Details',
            onChanged: (data) {
              subtitle = data;
            },
            maxLines: 5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: EditColorListview(note: widget.note),
        ),
      ],
    );
  }
}
