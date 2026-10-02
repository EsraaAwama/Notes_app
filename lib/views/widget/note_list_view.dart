import 'package:flutter/widgets.dart';
import 'package:notes_app/views/widget/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return noteItem();
        },
      ),
    );
  }
}
