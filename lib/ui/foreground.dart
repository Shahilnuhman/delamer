import 'package:flutter/material.dart';
import 'package:flutter_application_1/Explore.dart';
import 'package:flutter_application_1/images.dart';
import 'package:flutter_application_1/configurations/utils.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/screen/newhome.dart';
import 'package:google_fonts/google_fonts.dart';

class ForeGround extends StatefulWidget {
  const ForeGround({
    Key? key,
  }) : super(key: key);

  @override
  State<ForeGround> createState() => _ForeGroundState();
}

class _ForeGroundState extends State<ForeGround> {
  final controllervalue = TextEditingController();
  final controllervalue2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var InputBorder = const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(30.0)));
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            setState(() {
              controllervalue.text = "";
              controllervalue2.text = "";
            });
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Utils.getScreenHeight(context) * 0.5 / 5,
                ),
                Image.asset(
                  Images.image7,
                  width: Utils.getScreenHeight(context) * 1 / 5,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: controllervalue,
                  decoration: InputDecoration(
                      hintText: "enter your username here",
                      helperText: 'Keep it short, this is just a demo.',
                      labelText: 'username ',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      border: InputBorder,
                      enabledBorder: InputBorder,
                      focusedBorder: InputBorder,
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                      helperStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  // onChanged: () {},
                  obscuringCharacter: "*",
                  style: const TextStyle(color: Colors.white),
                  controller: controllervalue2,
                  decoration: InputDecoration(
                      border: InputBorder,
                      enabledBorder: InputBorder,
                      focusedBorder: InputBorder,
                      hintText: ' enter your password here',
                      helperText: 'Keep it short, this is just a demo.',
                      labelText: 'password ',
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      helperStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                      hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    checking(context);
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (ctx) {
                    //       return  chatScreen();
                    //     },
                    //   ),
                    // );
                    //     Navigator.pushNamed(
                    //   context,
                    //   Routes.HOME_SCREEN,
                    //   arguments: "Home",
                    // );
                    //  Navigator.of(context).push(
                    //       MaterialPageRoute(
                    //         builder: (ctx) {
                    //           return  chatScreen();
                    //         },
                    //       ),
                    //     );
                  },
                  child: const Text('LogIn'),
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'forgot password',
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ))),
                    Expanded(
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'signup for free',
                              style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            )))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checking(BuildContext ctx) {
    final username = controllervalue.text;
    final password = controllervalue2.text;
    if (username == "") {
      {
        ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(20),
            backgroundColor: Colors.red,
            content: Text("enter any credential")));
      }
    } else if (username == password) {
      Navigator.pushNamed(
        context,
        Routes.HOME_SCREEN,
        arguments: "Home",
      );
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(20),
          backgroundColor: Colors.red,
          content: Text("entered credentential is false")));
    }
  }

//   void checking(){
//     final username=contrllerva;
//   }
// }
}
