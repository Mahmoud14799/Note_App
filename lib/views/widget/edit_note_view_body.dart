import 'package:flutter/material.dart';
import 'package:note_pro/views/widget/custom_text_fild.dart';
import 'package:note_pro/views/widget/custtom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(title: 'Edit Note',icon: Icons.done),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(
            hint: 'Content',
            maxLine: 4,
          )
        ],
      ),
    );
  }
}
