import 'package:flutter/material.dart';
import 'package:notes_app/helper/helper.dart';
import 'package:notes_app/models/notemodel.dart';
import 'package:notes_app/views/widgets/colorslistview.dart';

class EditColorListview extends StatefulWidget {
  const EditColorListview({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorListview> createState() => _EditColorListviewState();
}

class _EditColorListviewState extends State<EditColorListview> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = colorsList.indexOf(Color(widget.note.color!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = colorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                  color: colorsList[index], isActive: currentIndex == index));
        },
      ),
    );
  }
}
