import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet(); //يفضل يلي بينكتب هون يكون custom
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
