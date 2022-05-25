import 'package:flutter/material.dart';

import 'components/header.dart';

class productPage extends StatefulWidget {
  String productTitle;

  productPage(this.productTitle);

  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
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
    header(widget.productTitle, context),
    SizedBox(height: 32),

    Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Image.asset("assets/images/last.png"),
          SizedBox(height: 30),
          
          const Text(
            "Patates Tercihi",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000)),),
        ],
      ),
    ),


    ])),
    ])));
  }
}
