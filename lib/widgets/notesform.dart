import 'package:flutter/material.dart';
import 'package:notes_app/cubits/addnotecubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class Notesform extends StatefulWidget {
  const Notesform({super.key});

  @override
  State<Notesform> createState() => _NotesformState();
}

class _NotesformState extends State<Notesform> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.disabled,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 34,
          ),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Field is required';
              } else {
                return null;
              }
            },
            onSaved: (data) {
              title = data;
            },
            hintText: "Title",
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return '*Field is required';
              } else {
                return null;
              }
            },
            type: TextInputType.text,
            onSaved: (data) {
              subTitle = data;
            },
            hintText: "Details",
            maxLines: 6,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButtom(onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              NoteModel note = NoteModel(
                  title: title,
                  subtitle: subTitle,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value);
              AddNoteCubit().addNote(note);
            } else {
              AutovalidateMode.always;
            }
          }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
