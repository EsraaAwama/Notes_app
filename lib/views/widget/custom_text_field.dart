import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

class CustumTextField extends StatelessWidget {
  CustumTextField({this.maxLines=1, required this.hintText});
  final String hintText;
 final int maxLines;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintMaxLines: maxLines,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
