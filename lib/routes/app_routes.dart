import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/screen/newhome.dart';

class AppRoutes {
  /// Add entry for new route here
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.SPLASH_SCREEN:
      //   return MaterialPageRoute(
      //     settings: RouteSettings(name: Routes.SPLASH_SCREEN),
      //     builder: (_) => SplashScreen(),
      //   );
      case Routes.HOME_SCREEN:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.HOME_SCREEN),
          builder: (_) => const chatScreen(),
        );
        case Routes.LOGIN:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.LOGIN),
          builder: (_) => const HomeScreen(),
        );
      
                

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

List<Map>  Routeschecking=[
  {'name': Routes.HOME_SCREEN,'label':"testing"},
  {'name': Routes.LOGIN,'label':"testing2"},
  {'name': 'third','label':"testing3"},
  
  
];