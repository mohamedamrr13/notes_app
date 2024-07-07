import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.iconData, this.onpressed});
  final String title;
  final IconData iconData;
  final VoidCallback? onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 32),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.05),
                borderRadius: BorderRadius.circular(16)),
            height: 50,
            width: 50,
            child: IconButton(
              onPressed: onpressed,
              icon: Icon(iconData),
              iconSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
