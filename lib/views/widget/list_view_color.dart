import 'package:flutter/material.dart';
import 'package:note_pro/models/note_model.dart';
import 'package:note_pro/views/widget/custtom_color_note.dart';

class ListViewColor extends StatefulWidget {
  const ListViewColor({super.key});

  @override
  State<ListViewColor> createState() => _ListViewColorState();
}

class _ListViewColorState extends State<ListViewColor> {
  final List<Color> colorList = [
    const Color(0xffF7A278),
    const Color(0xffA13D63),
    const Color(0xff351E29),
    const Color(0xff6DD3CE),
    const Color(0xff595758),
    Colors.grey,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.lightGreen,
    Colors.indigo,
    Colors.lime,
    Colors.orangeAccent
  ];

  int currantIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        // shrinkWrap: true,
        // physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: ColorNote(
              color: colorList[index],
              onTap: () {

                
                currantIndex = index;
                setState(() {});
              },
              isActive: currantIndex == index,
            ),
          );
        },
      ),
    );
  }
}
