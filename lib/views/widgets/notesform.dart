import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/addnotecubit/addnotecubit.dart';
import 'package:notes_app/cubits/addnotecubit/addnotestates.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/widgets/colorslistview.dart';
import 'package:notes_app/views/widgets/custombutton.dart';
import 'package:notes_app/views/widgets/customtextfield.dart';

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
          ),
          const SizedBox(
            height: 24,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButtom(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      NoteModel note = NoteModel(
                          title: title!,
                          subtitle: subTitle!,
                          date: todayDate(),
                          color: const Color(0xff156064).value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      AutovalidateMode.always;
                      setState(() {});
                    }
                  });
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
