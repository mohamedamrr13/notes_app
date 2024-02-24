import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({required this.onTap, super.key});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: const Color(0xff52EEDA),
              borderRadius: BorderRadius.circular(16)),
          child: const Center(
              child: Text('Add',
                  style: TextStyle(fontSize: 20, color: Colors.black))),
        ),
      ),
    );
  }
}
