import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/utils.dart';
import 'package:flutter_application_1/images.dart';
// import 'package:flutter_tindercard/flutter_tindercard.dart';

import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  List<String> welcome = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic4.jpg',
    // Images.image1
  ];
  @override
  Widget build(BuildContext context) {
    // CardController controller;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(Images.image4),
                  radius: 30,
                ),
                const SizedBox(
                  width: 25,
                ),
                Text("welcome user ",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: const Color(0xFF075e54)))
              ],
            ),
            // TinderSwapCard(
            //   orientation: AmassOrientation.BOTTOM,
            //   cardBuilder: (context, index) {
            //     return Card(
            //       child: Image.asset('${welcome[index]}'),
            //     );
            //   },
            //   cardController: controller = CardController(),
            //   swipeUpdateCallback:
            //       (DragUpdateDetails details, Alignment align) {
            //     if (align.x > 0) {
            //     } else if (align.x > 0) {}
            //   },
            //   swipeCompleteCallback:
            //       (CardSwipeOrientation orientation, int index) {},
            //   totalNum: 4,
            //   stackNum: 4,
            //   swipeEdge: 4.0,
            //   maxWidth: Utils.getScreenHeight(context) * 0.9,
            //   minHeight: Utils.getScreenHeight(context) * 0.8,
            //   minWidth: Utils.getScreenHeight(context) * 0.8,
            //   maxHeight: Utils.getScreenHeight(context) * 0.9,
            // )
          ],
        ),
      ),
    );
  }
}
