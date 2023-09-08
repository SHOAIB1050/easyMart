import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:online_shoping/category_screen/categoryScreen.dart';
import 'package:online_shoping/consts/consts.dart';
import 'package:online_shoping/controllers/home_controller.dart';
import 'package:online_shoping/home_screen/home_screen.dart';

import '../cart_screen/cart_screen.dart';
import '../profile_screen/profile_screen.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navbaritem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26), label: accont),
    ];
    var navBody = [
      homeScreen(),
      categoryScreen(),
      cartScreen(),
      profileScreen(),

    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(()=> BottomNavigationBar(
              currentIndex: controller.currentNavIndex.value,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: redColor,
            selectedLabelStyle: const TextStyle(fontFamily: semibold),
            items: navbaritem,
            onTap: (value){
                controller.currentNavIndex.value = value;
            },),
      ),
    );
  }
}
