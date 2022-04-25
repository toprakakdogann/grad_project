import 'package:flutter/material.dart';

Widget bottomNavBar(){
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -3),
              color: Colors.black.withOpacity(0.25),
              blurRadius: 10
          ),
        ],
        color: Color(0xFFEFF5FB),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(iconData: Icons.home, active: true),
          buildNavIcon(iconData: Icons.search, active: false),
          buildNavIcon(iconData: Icons.shopping_basket, active: false),
          buildNavIcon(iconData: Icons.message, active: false),
          buildNavIcon(iconData: Icons.person, active: false),

        ],
      ),
    ),
  );
}

Widget buildNavIcon({
  required IconData iconData,
  required bool active,
}) {
  return Icon(iconData,
    size: 22, color: Color(active ? 0xFFB71C1C : 0xFF000000),);
}
