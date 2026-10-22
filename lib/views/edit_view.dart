import 'package:flutter/material.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/views/widget/edit_view_body.dart';
import 'package:notes_app/views/widget/notes_view_body.dart';

class EditView extends StatelessWidget {
  final NoteViewModel noteViewModel;

  const EditView({super.key, required this.noteViewModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditViewBody(noteViewModel: noteViewModel,));
  }
}
