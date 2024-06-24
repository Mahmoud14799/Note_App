import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pro/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_pro/views/widget/custtom_app_bar.dart';
import 'package:note_pro/views/widget/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  NoteViewBody({super.key});
  final List<Color> color = [
    Colors.grey,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.lightGreen,
    Colors.indigo,
    Colors.lime,
    Colors.orangeAccent
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBar(
              title: 'Note Pro',
              icon: Icons.search,
            ),
            Expanded(
              child: NoteListView(),
            )
          ],
        ),
      ),
    );
  }
}
