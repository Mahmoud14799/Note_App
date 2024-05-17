import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLine = 1});
  final String hint;
  final int maxLine;
  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLines: maxLine,
        cursorColor: Colors.amber,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.green),
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(Colors.lightGreen)));
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.green.withOpacity(0.2)));
  }
}
