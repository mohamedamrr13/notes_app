import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customappbar.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        const CustomAppBar(
          iconData: Icons.check,
          title: 'Edit Note',
        ),
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          onSaved: (data) {},
          hintText: 'Title',
          onChanged: (data) {},
          maxLines: 1,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          onSaved: (data) {},
          hintText: 'Details',
          onChanged: (data) {},
          maxLines: 5,
        )
      ],
    );
  }
}
