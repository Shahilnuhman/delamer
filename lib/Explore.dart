// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/cuisiness.dart';
import 'package:flutter_application_1/ui/dishtype.dart';
import 'package:flutter_application_1/ui/ingredients.dart';
import 'package:flutter_application_1/ui/meal_type.dart';

class ExploreScreen1 extends StatefulWidget {
  const ExploreScreen1({Key? key}) : super(key: key);

  @override
  _ExploreScreen1State createState() => _ExploreScreen1State();
}

class _ExploreScreen1State extends State<ExploreScreen1> {

  int index=1;
  @override
  Widget build(BuildContext context) {
    final items= <Widget>[
      Icon(Icons.home),
      Icon(Icons.restaurant_menu_sharp),
      Icon(Icons.settings_outlined),

    ];


    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
           automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.grey[200],
          flexibleSpace: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              TabBar(
                tabs: const [
                  Text(
                    "cuisiness",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text("Meal type"),
                  Text("Dish type"),
                  Text("Ingredients")
                ],
                unselectedLabelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                labelPadding: const EdgeInsets.all(6),
                indicator: BoxDecoration(
                  border: Border.all(color: Color(0xFF075e54)),
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF075e54),
                ),
              ),
            ]),
          ),
        ),
        body: TabBarView(children: const [
          cuisiness(),
          meal_type(),
          dish_type(),
          Ingredients()
        ]),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Color(0xFF075e54),
          height: 50, 
          index: index,
          items: items),
      ),
    );
  }
}











