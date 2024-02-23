import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custombutton.dart';
import 'package:notes_app/widgets/customtextfield.dart';

class ModalBottomSheet extends StatelessWidget {
  const ModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 34,
          ),
          CustomTextField(
            hintText: "Title",
            onChanged: (data) {},
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: "Details",
            onChanged: (data) {},
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButtom(onTap: () {}),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
