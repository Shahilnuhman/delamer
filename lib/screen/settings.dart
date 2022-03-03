import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:settings_ui/settings_ui.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text(
              'Common',
              style: TextStyle(color: Color(0xFF075e54)),
            ),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Language'),
                value: Text('English'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.person),
                title: Text('User configuration'),
                // value: Text('English'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.lock),
                title: Text('security'),
                value: Text('setting the password'),
              ),

              // SettingsTile.switchTile(
              //   onToggle: (value) {},
              //   initialValue: true,
              //   leading: Icon(Icons.format_paint),
              //   title: Text('Enable custom theme'),
              // ),
            ],
          ),
          SettingsSection(
            title: Text(
              'Accounts',
              style: TextStyle(color: Color(0xFF075e54)),
            ),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.phone_outlined),
                title: Text('phone'),
                // value: Text('English'),
              ),
              // SettingsTile.navigation(
              //   leading: Icon(Icons.mail),
              //   title: Text('email'),
              //   // value: Text('English'),
              // ),

              SettingsTile.navigation(
                onPressed: (context) {
                  {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                               
                              },
                              child: const Text("cancel"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  Routes.LOGIN,
                                  arguments: "login",
                                );
                              },
                              child: const Text("signout"),
                            ),
                          ],
                          title: const Text("Confirm your SIgnout"),
                          contentPadding: const EdgeInsets.all(20),
                          content: const Text("do you really want to exit?"),
                        );
                      },
                    );
                  }
                },
                leading: Icon(Icons.logout),
                title: Text('logout'),
                
              ),
              

              
            ],
          )
        ],
      ),
    
    );
  }
}
