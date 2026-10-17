import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/views/widget/custom_note_item.dart';

class NoteListView extends StatelessWidget {
 // final NoteViewModel noteViewModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteViewModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: NoteItem(
                  noteViewModel: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
