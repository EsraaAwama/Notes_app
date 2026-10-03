import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_app_bar.dart';

class EditViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'edit',icon: Icons.check,),
        ],
      ),
    );
  }
}
