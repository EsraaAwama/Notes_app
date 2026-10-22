import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  final NoteViewModel noteViewModel;

  const NoteItem({super.key, required this.noteViewModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditView();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(noteViewModel.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end, //.............
            children: [
              ListTile(
                title: Text(
                  noteViewModel.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    noteViewModel.subtitle,
                    style: TextStyle(
                      color: Colors.black.withValues(alpha: 0.5),
                      fontSize: 18,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    noteViewModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(Icons.delete, color: Colors.black, size: 24),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  noteViewModel.date,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 0.5),
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
