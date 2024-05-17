import 'package:flutter/material.dart';
import 'package:note_pro/views/widget/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
      padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(),
                  );
                },
              ),
    );  
  }
}
