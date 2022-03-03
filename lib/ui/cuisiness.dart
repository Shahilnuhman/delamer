  import 'package:flutter/material.dart';
  import 'package:flutter_application_1/menus.dart';
  import 'package:flutter_application_1/configurations/shadow.dart';
  import 'package:flutter_application_1/configurations/utils.dart';
  import 'package:flutter_application_1/routes/app_routes.dart';
  import 'package:flutter_application_1/routes/routes.dart';

  // ignore: camel_case_types
  class cuisiness extends StatelessWidget {
    const 
    cuisiness({
      Key? key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        //  automaticallyImplyLeading: false,
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return InkWell(
                          onTap: (){
                            // Routeschecking[index]['name'];


                  //            Navigator.pushNamed(
                  //   context,
                  //   Routes.HOME_SCREEN,
                  //   arguments: "Home",
                  // );
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(0),
                                margin:
                                    const EdgeInsets.only(left: 10, top: 10),
                                height: 100,
                                width: 90,
                                child:
                                    Image.asset(Categories[index]['iconpath']),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF075e54),
                                  boxShadow: shadowList,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(Categories[index]['name'])
                            ],
                          ),
                        );
                      },
                      itemCount: Categories.length,
                    ),
                  ),
                  SizedBox(
                      height: Utils.getScreenHeight(context) * 12 / 20,
                      child: ListView.builder(
                        itemBuilder: (ctx, index) {
                          return const menu1samp();
                        },
                        itemCount: 5,
                      )
        
                      // ListView(
                      //   scrollDirection: Axis.vertical,
                      //   children: [
                      //     menu1samp(),
                      //     menu1samp(),
                      //     menu1samp(),
                      //   ],
                      // ),
                      ),
                ],
              )
            ],
          ),
        );
      
    }
  }
