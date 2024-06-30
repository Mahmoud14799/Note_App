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
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    currentIndex = kColor.indexOf(Color(widget.note.color));
    _scrollController =
        ScrollController(initialScrollOffset: currentIndex * 40.0);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        final double offset = currentIndex * 40; // عرض العنصر
        _scrollController.animateTo(
          offset,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });

    // Scroll to the initial color
  }

  @override
  void dispose() {
    _scrollController.dispose(); // لا تنسى التخلص من الـ ScrollController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        controller: _scrollController,
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
                  _scrollController.animateTo(
                    index * 40.0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
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
