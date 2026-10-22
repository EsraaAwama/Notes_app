import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconName;

  const CustomSearchIcon({super.key, required this.iconName, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(icon: Icon(iconName, size: 28), onPressed:onPressed),
      ),
    );
  }
}
