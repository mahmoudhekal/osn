import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:osn/consts/color.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'home_screen.dart';
import 'landing_screen.dart';

class LoginSignUpScreen extends StatefulWidget {
  LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  bool st = false;

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;

    var width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
      backgroundColor: darkAppColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .1),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .15,
              ),
              // CustomText(text: "Hello,"),
              // CustomText(text: "Welcom Back"),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icon/facebook.png",
                      width: 100,
                    )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icon/google.png",
                      width: 100,
                    )),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * .051,
              ),
              CustomTextField(
                keybord: TextInputType.emailAddress,
                tex: "Email or Phone number",
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              CustomTextField(
                keybord: TextInputType.visiblePassword,
                tex: "Password",
              ),

              st == true
                  ? Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .01,
                        ),
                        CustomTextField(
                          keybord: TextInputType.visiblePassword,
                          tex: "Confirm Password",
                        ),
                        SizedBox(
                          height: hight * .04,
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password?",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: hight * .04,
                        )
                      ],
                    ),
              st == false
                  ? Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        CustomButton(
                          onpress: () {
                            Get.offAll(() => const LandingScreen());
                          },
                          width: width * .4,
                          color: redAppColor,
                          text: "Login",
                          fontSize: 15,
                          textColor: darkAppColor,
                          height: hight * .06,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        CustomButton(
                          onpress: () {
                            setState(() {
                              st = !st;
                            });
                          },
                          width: width * .4,
                          color: blackAppColor,
                          text: "Signup",
                          fontSize: 15,
                          textColor: redAppColor,
                          height: hight * .06,
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        CustomButton(
                          onpress: () {
                            setState(() {
                              st = !st;
                            });
                          },
                          width: width * .4,
                          color: redAppColor,
                          text: "Signup",
                          fontSize: 15,
                          textColor: darkAppColor,
                          height: hight * .06,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        CustomButton(
                            onpress: () {
                              Get.offAll(() => const LandingScreen());
                            },
                            width: width * .4,
                            color: blackAppColor,
                            text: "Login",
                            fontSize: 15,
                            textColor: redAppColor,
                            height: hight * .06),
                      ],
                    )
            ],
          ),
        ),
      ),
    ));
  }
}
