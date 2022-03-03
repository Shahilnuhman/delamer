
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Explore.dart';
import 'package:flutter_application_1/screen/newlogin.dart';
import 'package:flutter_application_1/screen/settings.dart';

// ignore: camel_case_types
class chatScreen extends StatefulWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  State<chatScreen> createState() => _chatScreenState();
}

// ignore: camel_case_types
class _chatScreenState extends State<chatScreen> {
  int index = 0;

  final screens =[
    // chatScreen(),
    const firstpage(),
    const ExploreScreen1(),
    const settingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(Icons.home),
      const Icon(Icons.restaurant_menu_sharp),
      const Icon(Icons.settings_outlined),
    ];

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        // leading: Icon(Icons.access_time_rounded),

        backgroundColor: const Color(0xff075E54),
        title: const Center(child: Text("MiAppetite Demo")),
        
         automaticallyImplyLeading: false,
      ),
      body: screens[index],
      bottomNavigationBar: Theme(
        data:Theme.of(context).copyWith(
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        child: CurvedNavigationBar(
          buttonBackgroundColor:Colors.blueGrey,
          backgroundColor: Colors.transparent,
        
          color: const Color(0xFF075e54),
          height: 50, 
          index: index,
          items: items,
          onTap: (index)=>setState(()=>this.index =index),
          
          
          ),
      ),
    );
  }
}
