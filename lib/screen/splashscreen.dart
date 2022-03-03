import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/utils.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/routes/routes.dart';

import '../images.dart';

class screenSplash extends StatefulWidget {
  const screenSplash({Key? key}) : super(key: key);

  @override
  State<screenSplash> createState() => _screenSplashState();
}

class _screenSplashState extends State<screenSplash> {

  @override
  void initState() {
    gotologin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: ClipRRect(
                child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Image.asset(
                      Images.image3,
                      fit: BoxFit.fill,
                    ))),
            height: Utils.getScreenHeight(context),
          ),
          Container(
            color: Colors.black45,
          ),
          Center(child: Image(
            
            image: AssetImage(Images.image7),height: Utils.getScreenHeight(context)*0.3,))
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotologin()async{
    Future.delayed(Duration(seconds: 6)); 
    
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return  HomeScreen();
                        },
                      ),
                    );
                //     Navigator.pushNamed(
                //   context,
                //   Routes.HOME_SCREEN,
                //   arguments: "Home",
                // );
                  
  }
}
