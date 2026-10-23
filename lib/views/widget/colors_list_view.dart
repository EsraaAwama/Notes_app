import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 38, backgroundColor: Colors.blue);
  }
}

class ColorsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: ColorItem(),
          );
        },
      ),
    );
  }
}
