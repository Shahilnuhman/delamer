import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/images.dart';
import 'package:flutter_application_1/configurations/utils.dart';

import 'ui/foreground.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: ClipRRect(
            child: ImageFiltered(
              imageFilter:ImageFilter.blur(sigmaX: 3, sigmaY: 3) ,
              child: Image.asset(Images.image3,fit: BoxFit.fill,))),
          height: Utils.getScreenHeight(context),
        ),
        const ForeGround()
      ],
    );
  }
}


