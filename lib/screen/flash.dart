// // import 'dart:ffi';
// // import 'dart:ui';

// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/configurations/utils.dart';

// // import '../home.dart';
// // import '../images.dart';

// // class SplashScreen extends StatefulWidget {
// //   const SplashScreen({Key? key}) : super(key: key);

// //   @override
// //   State<SplashScreen> createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     gotoLogin();
// //     super.initState();
// //   }

// //   @override
// //   void didChangeDependencies() {
// //     // TODO: implement didChangeDependencies
// //     super.didChangeDependencies();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           Positioned(
// //             child: ClipRRect(
// //                 child: ImageFiltered(
// //                     imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
// //                     child: Image.asset(
// //                       Images.image3,
// //                       fit: BoxFit.fill,
// //                     ))),
// //             height: Utils.getScreenHeight(context),
// //           ),
// //           Center(
// //             child: Image.asset(
// //               Images.image7,
// //               height: 200,
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     // TODO: implement dispose
// //     super.dispose();
// //   }

// //   Future<Void> gotoLogin() async {
// //     await Future.delayed(const Duration(seconds: 3));

// //     Navigator.of(context).push(
// //       MaterialPageRoute(
// //         builder: (ctx) {
// //           return const HomeScreen();
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_tindercard/flutter_tindercard.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ExampleHomePage(),
//     );
//   }
// }

// class ExampleHomePage extends StatefulWidget {
//   @override
//   _ExampleHomePageState createState() => _ExampleHomePageState();
// }

// class _ExampleHomePageState extends State<ExampleHomePage>
//     with TickerProviderStateMixin {
//   List<String> welcomeImages = [
//     "assets/welcome0.png",
//     "assets/welcome1.png",
//     "assets/welcome2.png",
//     "assets/welcome2.png",
//     "assets/welcome1.png",
//     "assets/welcome1.png"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     CardController controller; //Use this to trigger swap.

//     return new Scaffold(
//       body: new Center(
//           child: Container(
//               height: MediaQuery.of(context).size.height * 0.6,
//               child: new TinderSwapCard(
//                   swipeUp: true,
//                   swipeDown: true,
//                   orientation: AmassOrientation.BOTTOM,
//                   totalNum: welcomeImages.length,
//                   stackNum: 3,
//                   swipeEdge: 4.0,
//                   maxWidth: MediaQuery.of(context).size.width * 0.9,
//                   maxHeight: MediaQuery.of(context).size.width * 0.9,
//                   minWidth: MediaQuery.of(context).size.width * 0.8,
//                   minHeight: MediaQuery.of(context).size.width * 0.8,
//                   cardBuilder: (context, index) => Card(
//                         child: Image.asset('${welcomeImages[index]}'),
//                       ),
//                   cardController: controller = CardController(),
//                   swipeUpdateCallback:
//                       (DragUpdateDetails details, Alignment align) {
//                     /// Get swiping card's alignment
//                     if (align.x < 0) {
//                       //Card is LEFT swiping
//                     } else if (align.x > 0) {
//                       //Card is RIGHT swiping
//                     }
//                   },
//                   swipeCompleteCallback:
//                       (CardSwipeOrientation orientation, int index) {
//                     /// Get orientation & index of swiped card!
//                   },
//               ),
//           ),
//       ),
//     );
//   }
// }