import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pro/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_pro/models/note_model.dart';
import 'package:note_pro/views/widget/custom_text_fild.dart';
import 'package:note_pro/views/widget/custtom_app_bar.dart';
import 'package:note_pro/views/widget/edite_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subTitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.green,
                    content: Text('تم تعديل الملاحظه بنجاح'),
                    duration: Duration(seconds: 4),
                  ),
                );
              },
              title: 'Edit Note',
              icon: Icons.done),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hint: widget.note.subtitle,
            maxLine: 4,
          ),
          EditNoteColorList(note:  widget.note,),
        ],
      ),
    );
  }
}
