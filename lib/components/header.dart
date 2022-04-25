import 'package:flutter/material.dart';

Widget header(String title, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 29),
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
            size: 27),
      ),

      SizedBox(height: 24),
      Text(title, style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Color(0xFF000000)),
      ),

    ],
  );
}