import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notescubit/notescubit.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/editnoteview.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return EditNoteView(note: note);
      })),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 04),
        child: Container(
          decoration: BoxDecoration(
              color: Color(note.color!),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: Text(
                      note.title!,
                      style: const TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: Text(note.subtitle!,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5))),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchNotes();
                    },
                    icon: const Icon(Icons.delete),
                    iconSize: 38,
                    color: Colors.black,
                  ).animate()),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 24),
                child: Text(note.date!,
                    style: TextStyle(color: Colors.black.withOpacity(0.5))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
