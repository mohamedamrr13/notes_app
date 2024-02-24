import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.type,
      this.onChanged,
      this.maxLines,
      required this.onSaved,
      this.validate});
  final String hintText;
  final int? maxLines;
  final TextInputType? type;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextFormField(
        validator: (data) {
          if (data?.isEmpty ?? true) {
            return 'Field is required *';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
        maxLines: maxLines,
        onChanged: onChanged,
        keyboardType: type,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    const BorderSide(color: Color(0xff52EEDA), width: 3)),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    const BorderSide(color: Color(0xff52EEDA), width: 3))),
      ),
    );
  }
}
