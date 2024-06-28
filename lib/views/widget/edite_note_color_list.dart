
import 'package:flutter/material.dart';
import 'package:note_pro/constants.dart';
import 'package:note_pro/models/note_model.dart';
import 'package:note_pro/views/widget/custtom_color_note.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;

  @override
  _EditNoteColorListState createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColor.indexOf(Color(widget.note.color));

    // Scroll to the initial color
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColor.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: ColorNote(
              color: kColor[index],
              onTap: () {
                setState(() {
                  currentIndex = index;
                  widget.note.color = kColor[index].value;
                });
              },
              isActive: currentIndex == index,
            ),
          );
        },
      ),
    );
  }
}
