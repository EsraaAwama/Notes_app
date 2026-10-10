import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NoteInitial());

  
fetchAllNotes(NoteViewModel note) async {
    try {
      var noteBox = Hive.box<NoteViewModel>(kNoteBox);
    List<NoteViewModel> notes = noteBox.values.toList;
      emit(NoteSuccess(notes));
    } catch (e) {
      emit(NoteFailure(errorMessage: e.toString() ));
    }
  }

}
