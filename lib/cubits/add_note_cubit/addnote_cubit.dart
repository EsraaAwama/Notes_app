import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
  Color color = Color(0xffAC3931);

  addNote(NoteViewModel note) async {
    note.color = color.value;
    emit(AddnoteLoading());
    try {
      var noteBox = Hive.box<NoteViewModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddnoteSuccess());
    } catch (e) {
      emit(AddnoteFailure(errorMessage: e.toString()));
    }
  }
}
