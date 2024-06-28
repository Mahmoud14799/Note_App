import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_pro/constants.dart';
import 'package:note_pro/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_pro/views/widget/custtom_color_note.dart';

class ListViewColor extends StatefulWidget {
  const ListViewColor({super.key});

  @override
  State<ListViewColor> createState() => _ListViewColorState();
}

class _ListViewColorState extends State<ListViewColor> {
  

  int currantIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        // shrinkWrap: true,
        // physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kColor.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: ColorNote(
              color: kColor[index],
              onTap: () {
                currantIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColor[index];
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
