import 'package:flutter/material.dart';
import 'package:notes_app/views/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final IconData icon;
    final void Function()? onPressed;

  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        CustomSearchIcon(iconName: icon,onPressed: onPressed,),
      ],
    );
  }
}
