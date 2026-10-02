import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',
        style: TextStyle(
          fontSize: 28,
        ),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
