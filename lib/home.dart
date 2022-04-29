import 'package:flutter/material.dart';
import 'package:grad_project/components/bottomNavBar.dart';
import 'package:grad_project/list_rest.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    children:[
                      //home başlığı
                      buildBaslik(),
                      //banner
                      buildBanner(),
                      const SizedBox(height: 24),
                      GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (Context) => restList()),
                        ),
                        child: Container(
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildNavigation(text: "İndirimler", icon: Icons.percent),
                            buildNavigation(text: "Fit Yemek", icon: Icons.fitness_center),
                            buildNavigation(text: "Öğrencilere", icon: Icons.menu_book),
                            buildNavigation(text: "Popüler", icon: Icons.favorite),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),
                      const Text("İndirimli Restaurantlar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color(0xFF000000),
                          )),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSalesItem(text: "Burger King", photoUrl: "assets/images/bk.png", discount: '%30',screenWidth: screenWidth,),
                          buildSalesItem(text: "KFC", photoUrl: "assets/images/KFC_logo.png", discount: '%20',screenWidth: screenWidth,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSalesItem(text: "MC Donald's", photoUrl: "assets/images/McDonald's_logo.png", discount: '%10',screenWidth: screenWidth,),
                          buildSalesItem(text: "Usta Dönerci", photoUrl: "assets/images/ud-logo.png", discount: '%50',screenWidth: screenWidth,),
                        ],
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),

            bottomNavBar("home"),

          ],
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
  Widget? widget,
  BuildContext? context,
}) {
  return GestureDetector(

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
        SizedBox(height: 8),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xFFB71C1C),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    ),
  );
}

Widget buildSalesItem({
  required String text,
  required String photoUrl,
  required String discount,
  required double screenWidth,
}) {
  return Container(
    width: (screenWidth - 60) * 0.5,
    padding:
    EdgeInsets.only(left:12, top: 12, bottom: 21, right: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Color(0xFFE0ECF8)),
          child: Text(
            discount,
              style: const TextStyle(
                color: Color(0xFF000000),
                fontSize: 15,
              ),
            ),
        ),
        const SizedBox(height: 22),
        Center(child: Image.asset(photoUrl, width: 120, height: 120,)),
        const SizedBox(height: 10),
        Center(
          child: Text(text,
              style: const TextStyle(
                  fontSize: 18,
                  color: Color(0xFF000000))),

        ),
      ],
    ),
  );
}


