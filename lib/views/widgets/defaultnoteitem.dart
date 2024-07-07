import 'package:flutter/material.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/editnoteview.dart';

class Default extends StatelessWidget {
  const Default({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return EditNoteView(
          note: note,
        );
      })),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 04),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Text(
                    'add a new note',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                ),
                subtitle: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Text('',
                      style: TextStyle(
                          fontSize: 18, color: Colors.black.withOpacity(0.5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 24),
                child: Text(todayDate(),
                    style: TextStyle(color: Colors.black.withOpacity(0.5))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
