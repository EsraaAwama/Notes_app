import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_bottom.dart';
import 'package:notes_app/views/widget/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32,),
            CustumTextField(hintText: 'title',),
        
            SizedBox(height: 16,),
        
             CustumTextField(hintText: 'content',maxLines: 5,),
             SizedBox(height: 32),

             CustomBotton(onTap: (){}, butonName: 'Add'),
             SizedBox(height: 16,),

        
          ],
        ),
      ),
    );
  }
}
