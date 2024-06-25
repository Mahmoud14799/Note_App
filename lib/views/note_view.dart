import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pro/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_pro/views/widget/add_note_button_sheet.dart';
import 'package:note_pro/views/widget/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteButtonSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
        body: NoteViewBody());
  }
}
