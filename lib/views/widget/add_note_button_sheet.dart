import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          child: const Form(
            child: Column(children: [
              SizedBox(
                height: 32,
              ),
              CustomTextField(
                hint: 'title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'content',
                maxLine: 4,
              ),
              SizedBox(
                height: 30,
              ),
              CustomButtonSheet(),
              SizedBox(
                height: 40,
              )
            ]),
          )),
    );
  }
}

