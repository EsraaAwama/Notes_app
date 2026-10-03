import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  final IconData iconName;

  const CustomSearchIcon({super.key, required this.iconName});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: .05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(child: Icon(iconName, size: 28)),
    );
  }
}
