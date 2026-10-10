import 'package:flutter/material.dart';
import 'package:notes_app/constats.dart';

class CustomBotton extends StatelessWidget {
  VoidCallback? onTap;
  String butonName;
  final bool isLoading;
  CustomBotton({required this.onTap, required this.butonName,  this.isLoading=false});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),

        child: Center(
          child: isLoading ? SizedBox(
            height: 24,
            width: 24,
            child: CircularProgressIndicator()): Text(
            butonName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
