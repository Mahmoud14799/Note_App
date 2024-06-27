import 'package:flutter/material.dart';

class ColorNote extends StatelessWidget {
  const ColorNote({
    super.key,
    required this.color,
    this.onTap, required this.isActive,
  });
  final Color color;
  final bool isActive;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:isActive ?CircleAvatar(
      radius: 50,
      backgroundColor:Colors.white,
        child: CircleAvatar(
          backgroundColor: color,
          radius: 35,
        ),
      )   : CircleAvatar(
        backgroundColor: color,
        radius: 40,
      ),
    );
  }
}
