import 'package:flutter/material.dart';
import 'package:note_pro/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteView();
        }));
      },
      child: Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
          decoration: BoxDecoration(
            color: const Color(0xffffca79),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Note Title',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                subtitle: Text(
                  'Note Content With mahmoud badawy',
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.5)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  '27.Aug.2024',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ],
          )),
    );
  }
}
