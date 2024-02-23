import 'package:flutter/material.dart';
import 'package:notes_app/views/editnoteview.dart';

class CustomNoteListTile extends StatelessWidget {
  const CustomNoteListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const EditNoteView();
      })),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 04),
        child: Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 215, 208, 75).withOpacity(0.8),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    child: Text(
                      "Flutter tips",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    child: Text("Build your Career with Tharwat Samy",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black.withOpacity(0.5))),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Icon(
                      Icons.delete_forever,
                      size: 38,
                      color: Colors.black,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 24),
                child: Text('May 21,2024',
                    style: TextStyle(color: Colors.black.withOpacity(0.5))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
