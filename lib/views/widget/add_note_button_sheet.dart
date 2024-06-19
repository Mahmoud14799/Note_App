import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_pro/views/widget/add_note_form.dart';
import 'package:note_pro/views/widget/custom_button_sheet.dart';
import 'package:note_pro/views/widget/custom_text_fild.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.only(
              right: 16,
              left: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: const AddNoteForm()),
    );
  }
}

