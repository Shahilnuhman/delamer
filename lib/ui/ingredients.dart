import 'package:flutter/material.dart';
import 'package:flutter_application_1/menus.dart';
import 'package:flutter_application_1/configurations/shadow.dart';
import 'package:flutter_application_1/configurations/utils.dart';


class Ingredients extends StatelessWidget {
  const Ingredients({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      onTap: (){},
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
                  itemCount: 6,
                ),
              ),
              SizedBox(
                height: Utils.getScreenHeight(context) * 12 / 20,
                child: ListView.builder(itemBuilder: (ctx,index){
                  return const menu1samp();
                }
                ,itemCount: 5,)
                
              
              ),
            ],
          )
        ],
      ),
    );
  }
}