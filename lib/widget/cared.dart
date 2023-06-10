import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;
  final String imagePath;

  const CardItem({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 76.0,
          height: 76.0,
          margin: const EdgeInsets.only(right: 10.0),
          padding: const EdgeInsets.only(
            left: 13.0,
            right: 12.0,
            bottom: 9.0,
            top: 9.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.grey.withOpacity(0.05),
          ),
          child: Image.asset(
            imagePath,
            height: 58.0,
            width: 51.0,
          ),
        ),
        const SizedBox(height: 5.0),
        Text(
          title,
          style: const TextStyle(
            height: 1.4,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
