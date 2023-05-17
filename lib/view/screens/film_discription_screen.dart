import 'package:flutter/material.dart';
import 'package:osn/consts/color.dart';

import '../widgets/custom_discrip_text.dart';

// ignore: must_be_immutable
class FelmDiscripScreen extends StatelessWidget {
  String? title, img, discrip;
  double? hi;

  FelmDiscripScreen({super.key, this.title, this.img, this.discrip, this.hi});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkAppColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: redAppColor),
        elevation: 0,
        centerTitle: true,
        backgroundColor: darkAppColor,
        title: Text(
          title!,
          style: const TextStyle(
              color: redAppColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: width * .9,
            height: hight * .3,
            margin: EdgeInsets.symmetric(horizontal: width * .05),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                img!,
                width: width * .9,
                height: hight * .25,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: hight * .01,
          ),
          const Divider(
            color: redAppColor,
            thickness: 2,
          ),
          Container(
            padding: EdgeInsets.all(width * .01),
            width: double.infinity,
            height: hight * hi!,
            margin: EdgeInsets.all(width * .03),
            color: darkAppColor,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const Text(
                'الوصف',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: whiteAppColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 15
                    ),
              ),
              DiscripText(text: discrip!),
            ]),
          )
        ],
      ),
    );
  }
}
