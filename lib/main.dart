
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    //home başlığı
                    buildBaslik(),

                    //banner
                    buildBanner(),

                    const SizedBox(height: 24),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFF535353),
                      ),
                      child: const Text(
                        "Restaurantları Listele",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600
                        ),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:48),
                      child: Row(
                        children: [
                          buildNavigation(text: "İndirim", icon: Icons.menu,),
                          buildNavigation(text: "İndirim", icon: Icons.menu),
                          buildNavigation(text: "İndirim", icon: Icons.menu),
                          buildNavigation(text: "İndirim", icon: Icons.menu),
                        ],
                      ),
                    )



                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

Widget buildBaslik() {
  return const Padding(
    padding: EdgeInsets.only(top: 12.0),
    child: Text(
      "Home",
      style: TextStyle(
        fontSize: 32,
        color: Color(0xFF000000),
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
Widget buildBanner() {
   return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(
              left: 24, right: 36, top: 14, bottom: 18),
          decoration: BoxDecoration(
              color: const Color(0xFFB71C1C),
              borderRadius: BorderRadius.circular(6)),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "İndirim Yağmuru",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "%50 ye varan indirimler",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              Image.asset("assets/images/hamburger.png",
                width: 100,height: 100,)
            ],
          )));

}

Widget buildNavigation({
  required String text,
  required IconData icon,
  Widget widget,
  BuildContext context,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
      child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 22),
          decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFE0EcF8)),
          child: Icon(
            icon,
            color: const Color(0xFFB71C1C),
            size: 18,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "sas",
          style: TextStyle(
            color: Color(0xFFB71C1C),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}


