import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final Color? color;
  final String? text1;
  final String? text2;
  final String? text3;
  const Tile(
      {Key? key,
      required this.color,
      required this.text1,
      required this.text2,
      required this.text3})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1!),
            const SizedBox(
              height: 8,
            ),
            Text(text2!),
            const SizedBox(
              height: 40,
            ),
            Text(text3!),
          ],
        ),
      ),
    );
  }
}
