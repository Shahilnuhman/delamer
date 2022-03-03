import 'package:flutter/material.dart';

const _basePath = 'assets/images';

Color primaryGreen = Color(0xFF075e54);
List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey,
    blurRadius: 30,
    offset: Offset(0, 10),
  )
];

List<Map>  Categories=[
  {'name': 'first','iconpath':'$_basePath/png2.png'},
  {'name': 'second','iconpath':'$_basePath/png3.png'},
  {'name': 'third','iconpath':'$_basePath/png4.png'},
  {'name': 'forth','iconpath':'$_basePath/png5.png'},
  
];
List<Map>  countries=[
  {'name': 'first','label':"testing"},
  {'name': 'second','label':"testing2"},
  {'name': 'third','label':"testing3"},
  
  
];

