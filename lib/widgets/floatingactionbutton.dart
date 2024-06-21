import 'package:flutter/material.dart';
import 'package:notes_app/widgets/modalbottomsheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff52EEDA),
      onPressed: () async {
        await showBottomSheet(context);
      },
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}

Future<dynamic> showBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ModalBottomSheet();
      });
}
