import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:osn/consts/color.dart';

import '../../consts/images.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1800,
      splash: logo,
      splashIconSize: 300,
      backgroundColor: blackAppColor,
      nextScreen:  LoginSignUpScreen(),

      // pageTransitionType: PageTransitionType.scale,
    );
  }
}
