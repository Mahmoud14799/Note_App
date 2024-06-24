import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:note_pro/constants.dart';
import 'package:note_pro/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = noteBox.values.toList();
    emit(NotesSuccess(notes));
  }
}
