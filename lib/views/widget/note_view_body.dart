import 'package:flutter/material.dart';
import 'package:note_pro/views/widget/custtom_app_bar.dart';
import 'package:note_pro/views/widget/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          CustomAppBar(),

          NoteItem(),
        ],
      ),
    );
  } 
}

