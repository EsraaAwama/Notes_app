part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NoteInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteSuccess extends NotesState {
  final List<NoteViewModel> notes;

  NoteSuccess( this.notes);
}

class NoteFailure extends NotesState {
  final String errorMessage;

  NoteFailure({required this.errorMessage});
}
