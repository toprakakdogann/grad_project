import 'package:flutter/material.dart';
import 'package:grad_project/components/bottomNavBar.dart';

import 'components/header.dart';

class restaurant extends StatelessWidget {

  List<Map> products = [
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },
    {
      "isim": "Double Zinger Burger",
      "fotograf": "assets/images/last.png",
      "fiyat": "49.99"
    },


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header("KFC", context),
                      SizedBox(height: 32),


                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          children:  products.map<Widget>((product) {
                            return buildContent(
                                product ["isim"], product ["fotograf"], product ["fiyat"]);
                          }).toList() as List<Widget>,
                        ),

                      ),
                      SizedBox(height: 60),

                    ]),
              ),

              bottomNavBar("search"),
            ])));
  }
}

  buildContent(String title, String photoUrl, String price) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(6),
      boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24,
            offset: Offset(0, 16))
      ],
    ),
    child: Column(
      children: [
        Image.asset(photoUrl),
        SizedBox(height: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),),
            Text(
              "$price ₺",
              style: const TextStyle(
                  color: Color(0xFF0001FC),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),),

          ],
        ),

      ],
    ),
  );


}