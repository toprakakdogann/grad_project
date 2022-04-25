import 'package:flutter/material.dart';
import 'package:grad_project/components/bottomNavBar.dart';

import 'package:grad_project/components/header.dart';

class restList extends StatelessWidget {

  final List<String> rests = [
    "KFC",
    "Burger King",
    "Mc Donald's",
    "Usta Dönerci",
    "Popeyes",
    "Arbys",
    "Dominos Pizza",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Stack(
        children: [
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      header("Restaurantlar", context),
      SizedBox(height: 16),

      Expanded(
          child: ListView(
            children: rests
              .map((String title) => buildRest(title))
              .toList()),
      ),

      ],
    ),
    ),

          bottomNavBar(),
    ])));
  }
}


Widget buildRest(String title){
  return Container(
    padding: EdgeInsets.all(24),
    margin: EdgeInsets.only(bottom: 16),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4,
              offset: Offset(0, 4)),
        ]),
    child: Text(
      title,
      style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xFF000000)),
    ),
  );
}