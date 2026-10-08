import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/addnote_cubit.dart';
import 'package:notes_app/views/widget/add_note_form.dart';

class AddNoteBottomSheet extends StatefulWidget {
  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddnoteCubit, AddnoteState>(
          listener: (context, state) {
            if(state is AddnoteFailure){
              print('failied ${state.errorMessage}');
            }
           if(state is AddnoteSuccess){
              Navigator.pop(context);
            }

          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddnoteLoading ? true : false,
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
