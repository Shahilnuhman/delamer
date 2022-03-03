// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configurations/shadow.dart';
import 'package:flutter_application_1/configurations/utils.dart';
import 'package:google_fonts/google_fonts.dart';

import 'images.dart';

class menu2samp extends StatelessWidget {
  final country;
  final labels;

  const menu2samp({Key? key,required this.country, required  this.labels}) : super(key: key);


  

  // final BuildContext context;

  @override
  Widget build(BuildContext context,) {
    return Container(
      height: Utils.getScreenHeight(context) * 8/ 20,
      padding: const EdgeInsets.only(top: 10),
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: Stack(children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                child: Image.asset(
                  Images.image2,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black])),
                ),
              ),
              Positioned(
                  child: Container(
                padding: const EdgeInsets.only(left: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      country,
                      style: GoogleFonts.poppins(
                          fontSize: 30, color: Colors.white),
                    )
                  ],
                ),
              ))
            ]),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: shadowList),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    ''' If I was turned into cake, I would eat   myself before       anyone else could''',
                    style: GoogleFonts.poppins(),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  const SizedBox(height: 10),
                  Text('Have for',
                      style: GoogleFonts.pacifico(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: const Color(0xFF075e54))),
                  const Text('samp'),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Course',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF075e54))),
                  const Text('samp')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class menu1samp extends StatelessWidget {
  const menu1samp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 220,
      margin: const EdgeInsets.only(left: 23, right: 24, top: 10),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            Images.image5,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black87]) 
                    ),
          ),
        ),
        Positioned(
            child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 30,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    'India',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ))
      ]),
    );
  }
}
