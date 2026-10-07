import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

class CustumTextField extends StatelessWidget {
  CustumTextField({this.maxLines = 1, required this.hintText, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved, //........................حفظ قيمة الحقل في متغير 
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
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
