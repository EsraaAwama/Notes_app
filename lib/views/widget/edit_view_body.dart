import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit.dart';
import 'package:notes_app/models/note_view_model.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class EditViewBody extends StatefulWidget {
  final NoteViewModel noteViewModel;

  const EditViewBody({super.key, required this.noteViewModel});

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: 'edit',
            icon: Icons.check,
            onPressed: () {
              widget.noteViewModel.title = title ?? widget.noteViewModel.title;
              widget.noteViewModel.subtitle =
                  content ?? widget.noteViewModel.subtitle;
              widget.noteViewModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 50),
          CustumTextField(
            hintText: widget.noteViewModel.title,
            onChanged: (p0) {
              title = p0;
            },
          ),
          SizedBox(height: 16),
          CustumTextField(
            hintText: widget.noteViewModel.subtitle,
            maxLines: 5,
            onChanged: (p0) {
              content = p0;
            },
          ),
        ],
      ),
    );
  }
}
