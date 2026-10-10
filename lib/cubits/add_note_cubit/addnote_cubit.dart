import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());

  addNote(NoteViewModel note) async {
    emit(AddnoteLoading());
    try {
      var noteBox = Hive.box<NoteViewModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddnoteSuccess());
    } catch (e) {
      emit(AddnoteFailure(errorMessage: e.toString() ));
    }
  }
}
