import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({required this.onTap, this.isLoading = false, super.key});
  final Function() onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xff52EEDA),
            borderRadius: BorderRadius.circular(16)),
        child: isLoading
            ? const Center(
                child: SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 55, 55, 55)),
                  ),
                ),
              )
            : const Center(
                child: Text('Add',
                    style: TextStyle(fontSize: 20, color: Colors.black))),
      ),
    );
  }
}
