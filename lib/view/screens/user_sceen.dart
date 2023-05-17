import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osn/consts/color.dart';
import 'package:osn/view/screens/landing_screen.dart';
import '../../consts/icons.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var hight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: darkAppColor,
      appBar: AppBar(
        backgroundColor: darkAppColor,
        title: const Text(
          'Profile',
          style: TextStyle(color: redAppColor, fontWeight: FontWeight.w700),
        ),
        actions: [
          Image.asset(
            osn,
            width: width * .124,
          ),
          SizedBox(
            width: width * .05,
          ),
        ],
        elevation: 0.0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * .04),
                child: Image.asset(
                  userAvater,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: CustomTextField(
                keybord: TextInputType.emailAddress,
                icon: Icons.person_2,
                tex: "User name",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: CustomTextField(
                keybord: TextInputType.emailAddress,
                icon: Icons.transgender_sharp,
                tex: "Gender",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: CustomTextField(
                keybord: TextInputType.emailAddress,
                icon: Icons.email,
                tex: "E-mail",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.1,
                right: MediaQuery.of(context).size.width * 0.1,
                top: MediaQuery.of(context).size.height * 0.01,
              ),
              child: CustomTextField(
                keybord: TextInputType.emailAddress,
                icon: Icons.phone_android_rounded,
                tex: "Phone",
              ),
            ),
            SizedBox(
              height: hight * .04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.02),
              child: CustomButton(
                text: 'Done',
                color: redAppColor,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.06,
                onpress: () {
                  Get.off(() => const LandingScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
