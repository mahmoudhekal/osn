import 'package:flutter/material.dart';
import '../../consts/color.dart';
import '../../consts/icons.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkAppColor,
      appBar: AppBar(
        backgroundColor: darkAppColor,
        title: const Text(
          'Support',
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02),
                          child: CircleAvatar(
                            backgroundColor: darkAppColor,
                            radius: MediaQuery.of(context).size.width * .09,
                            child: Image.asset(
                              osn,
                              height: MediaQuery.of(context).size.height * .09,
                              width: MediaQuery.of(context).size.height * .09,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .01),
                          height: MediaQuery.of(context).size.height * .08,
                          width: MediaQuery.of(context).size.width * .65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: redAppColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .08,
                          width: MediaQuery.of(context).size.width * .65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: redAppColor),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02),
                          child: CircleAvatar(
                            backgroundColor: darkAppColor,
                            radius: MediaQuery.of(context).size.width * .09,
                            child: Image.asset(
                              userAvater,
                              height: MediaQuery.of(context).size.height * .09,
                              width: MediaQuery.of(context).size.height * .09,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .02),
        decoration: BoxDecoration(
          color: darkAppColor,
          border: Border.all(
            color: redAppColor,
            width: MediaQuery.of(context).size.width * .005,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                  width: MediaQuery.of(context).size.height * .05,
                  child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.camera_alt,
                        color: redAppColor,
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                  width: MediaQuery.of(context).size.height * .05,
                  child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.photo,
                        color: redAppColor,
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                  width: MediaQuery.of(context).size.height * .05,
                  child: TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.keyboard_voice_sharp,
                        color: redAppColor,
                      )),
                ),
              ],
            ),
            Expanded(
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * .016,
                    horizontal: MediaQuery.of(context).size.width * .03,
                  ),
                  hintText: 'Type here',
                  border: InputBorder.none,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.send,
                color: redAppColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
