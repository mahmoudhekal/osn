import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:osn/consts/color.dart';

import '../../consts/icons.dart';
import '../../consts/list.dart';
import '../widgets/custem_text.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkAppColor,
      appBar: AppBar(
        backgroundColor: darkAppColor,
        title: const Text(
          'Notification',
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
      body: Column(
        children: [
          SizedBox(
              width: double.infinity,
              height: hight * .8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: notification.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: hight * .17,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        horizontal: width * .05, vertical: hight * .02),
                    decoration: BoxDecoration(
                        color: darkAppColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(300),
                          child: Image.asset(
                            notification[index]["img"],
                            width: width * .23,
                            height: hight * .1,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: width * .05,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: hight * .04,
                            ),
                            Text(
                              notification[index]["heder"],
                              style: const TextStyle(
                                  color: whiteAppColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                            ),
                            Text(
                              notification[index]["meddle"],
                              style: const TextStyle(
                                  color: whiteAppColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                            ),
                            CustomText(
                              text: notification[index]["time"],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
