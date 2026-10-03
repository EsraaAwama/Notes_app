import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustumTextField(hintText: 'title',),

          SizedBox(height: 16,),

           CustumTextField(hintText: 'content',maxLines: 5,),

        ],
      ),
    );
  }
}
