import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pro/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_pro/models/note_model.dart';
import 'package:note_pro/views/widget/custom_button_sheet.dart';
import 'package:note_pro/views/widget/custom_text_fild.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

final GlobalKey<FormState> formKey = GlobalKey();
AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

String? title, subTitle;

class _AddNoteFormState extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextField(
          onSaved: (value) {
            title = value;
          },
          hint: 'title',
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextField(
          onSaved: (value) {
            subTitle = value;
          },
          hint: 'content',
          maxLine: 4,
        ),
        const SizedBox(
          height: 30,
        ),
        BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return CustomButtonSheet(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var noteModel = NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  setState(() {
                    autoValidateMode = AutovalidateMode.always;
                  });
                }
              },
            );
          },
        ),
        const SizedBox(
          height: 40,
        )
      ]),
    );
  }
}
