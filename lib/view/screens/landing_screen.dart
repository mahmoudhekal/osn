import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osn/consts/color.dart';
import 'package:osn/view/screens/user_sceen.dart';

import '../../controller/home_controller.dart';
import 'home_screen.dart';
import 'notification.dart';
import 'support.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());

    // ignore: unused_local_variable
    var navBody = [
      const HomeScreen(),
      const SupportScreen(),
      const ProfileScreen(),
      const NotificationScreen(),
    ];
    var navItems = [
      const BottomNavigationBarItem(
          icon: Icon(Icons.home), label: 'Home', backgroundColor: darkAppColor),
      const BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Support',
          backgroundColor: darkAppColor),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_rounded),
          label: 'Profile',
          backgroundColor: darkAppColor),
      const BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active),
          label: 'Notification',
          backgroundColor: darkAppColor),
    ];
    return Scaffold(
      backgroundColor: darkAppColor,
      body: Obx(
        () => Container(
          child: navBody.elementAt(controller.currentNavIndex.value),
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          items: navItems,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: redAppColor,
          backgroundColor: darkAppColor,
          selectedItemColor: whiteAppColor,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
