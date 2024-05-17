import 'package:flutter/material.dart';

class CustomButtonSheet extends StatelessWidget {
  const CustomButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(8)),
      child: const Center(
          child: Text(
        'Add',
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
