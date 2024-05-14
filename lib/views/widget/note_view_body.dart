import 'package:flutter/material.dart';
import 'package:note_pro/views/widget/custtom_app_bar.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          CustomAppBar(),

          Expanded(
            child: NoteItem(),
          ),
        ],
      ),
    );
  } 
}

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
     child:const ListTile(
        title:  Text('Note Title'),
        subtitle: Text('Note Content'),
        trailing:  Icon(Icons.delete),

      )
    );
  }
}


