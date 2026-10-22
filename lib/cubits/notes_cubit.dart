import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constats.dart';
import 'package:notes_app/models/note_view_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NoteInitial());

  List<NoteViewModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteViewModel>(kNoteBox);
    notes = noteBox.values.toList;
    emit(NoteSuccses());
  }
}
