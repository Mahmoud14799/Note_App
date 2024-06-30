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
  late TextEditingController _titleController, _subTitleController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.note.title);
    _subTitleController = TextEditingController(text: widget.note.subtitle);
  }

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
                    backgroundColor: Colors.grey,
                    content: Text('تم تعديل الملاحظه بنجاح'),
                    duration: Duration(seconds: 3),
                  ),
                );
              },
              title: 'Edit Note',
              icon: Icons.done),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
              controller: _titleController,
              onChanged: (value) {
                title = value;
              },
              hint: 'title'),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            controller: _subTitleController,
            onChanged: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLine: 4,
          ),
          const SizedBox(
            height: 40,
          ),
          EditNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
