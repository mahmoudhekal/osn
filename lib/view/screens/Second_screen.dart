import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:osn/consts/color.dart';

import '../../consts/images.dart';
import '../../consts/list.dart';
import '../widgets/custem_text.dart';
import 'film_discription_screen.dart';

// ignore: must_be_immutable
class SecondScreen extends StatefulWidget {
  String? title;
  // ignore: prefer_typing_uninitialized_variables
  var moveList, seriseList, img;
  SecondScreen(
      {super.key, this.title, this.moveList, this.seriseList, this.img});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      TabContainer(listName: widget.moveList, img: widget.img),
      TabContainer(
        listName: widget.seriseList,
        img: widget.img,
      ),
    ];
    _tabController = TabController(length: widgets.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var hight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: darkAppColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: redAppColor),
        elevation: 0,
        centerTitle: true,
        backgroundColor: darkAppColor,
        title: Text(
          widget.title!,
          style: const TextStyle(
              color: redAppColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            indicatorColor: redAppColor,
            labelColor: redAppColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            dragStartBehavior: DragStartBehavior.start,
            isScrollable: false,
            controller: _tabController,
            tabs: tabs,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: const ScrollPhysics(),
              children: widgets,
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class TabContainer extends StatelessWidget {
  TabContainer({super.key, this.listName, this.img});
  String? img;
  // ignore: prefer_typing_uninitialized_variables
  var listName;

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * .3,
      color: darkAppColor,
      child: Column(
        children: [
          SizedBox(
              width: double.infinity,
              height: hight * .8,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: listName!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => FelmDiscripScreen(
                                img: listName![index]["img"],
                                title: listName![index]['title'],
                                discrip: listName![index]['discrip'],
                                hi: listName![index]['hight'],
                              ));
                    },
                    child: Container(
                      height: hight * .17,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(
                          horizontal: width * .05, vertical: hight * .02),
                      decoration: BoxDecoration(
                          color: darkAppColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(listName![index]["img"],
                                fit: BoxFit.cover,
                                width: width * .3,
                                height: hight * .17),
                          ),
                          SizedBox(
                            width: width * .06,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomText(
                                text: listName![index]["title"],
                              ),
                              CustomText(
                                text: listName![index]["year"],
                              ),
                              CustomText(
                                text: listName![index]["rate"],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
