import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/themeprovider.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/routes/app_routes.dart';
import 'package:flutter_application_1/screen/splashscreen.dart';



void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const screenSplash(),
      // themeMode: ThemeMode.light,
      // theme: Mythemes.lightTheme,
      // darkTheme: Mythemes.darkTheme,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      
    
      onGenerateRoute: AppRoutes.generateRoute,
      debugShowCheckedModeBanner: false,

      
    );
  }
}