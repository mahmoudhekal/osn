import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osn/view/screens/Second_screen.dart';
import 'package:osn/view/screens/film_discription_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../consts/color.dart';
import '../../consts/icons.dart';
import '../../consts/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkAppColor,
      appBar: AppBar(
        backgroundColor: darkAppColor,
        title: const Text(
          'Home',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome',
                  style: TextStyle(color: whiteAppColor),
                ),
                Text(
                  'Sara!',
                  style: TextStyle(
                      fontSize: 20,
                      color: whiteAppColor,
                      fontWeight: FontWeight.w900,
                      letterSpacing: width * .01),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: hight * .26,
            child: CarouselSlider(
              items: filmSlider
                  .map(
                    (e) => GestureDetector(
                        onTap: () {
                          Get.to(() => FelmDiscripScreen(
                                img: e["img"],
                                title: e['title'],
                                discrip: e['discrip'],
                                hi: e['hight'],
                              ));
                        },
                        child: Image.asset(
                          e["img"].toString(),
                          height: .3,
                          width: width * .8,
                          fit: BoxFit.cover,
                        )),
                  )
                  .toList(),
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlayCurve: Curves.decelerate,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                animateToClosest: true,
                aspectRatio: 2.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
            ),
          ),
        
          SizedBox(
            height: hight * .0051,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: hight * 0.08,
                  crossAxisSpacing: width * 0,
                  crossAxisCount: 2),
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => SecondScreen(
                          title: categoryList[index]['title'],
                          moveList: categoryList[index]["mList"],
                          seriseList: categoryList[index]["sList"],
                        ));
                  },
                  child: Container(
                    height: hight * .09,
                    width: width * .4,
                    padding: EdgeInsets.symmetric(horizontal: width * .019),
                    margin: EdgeInsets.symmetric(
                        vertical: hight * .0031, horizontal: width * .005),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: blackAppColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          categoryList[index]['title'],
                          style: const TextStyle(
                              color: whiteAppColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            height: hight * .05,
                            width: hight * .05,
                            child: Image.asset(
                              categoryList[index]['icon'],
                              fit: BoxFit.cover,
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
