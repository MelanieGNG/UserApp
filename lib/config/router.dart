import 'package:flutter/material.dart';
import 'package:user_app/screens/home_screen.dart';
import 'package:user_app/screens/profile_screen.dart';
import 'package:user_app/screens/user_profile_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String profile = '/profile';
  static const String userProfile = '/userProfile';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case userProfile:
        final args = settings.arguments as Map<String, String>;
        return MaterialPageRoute(
          builder: (_) => UserProfileScreen(
            name: args['name']!,
            age: args['age']!,
            job: args['job']!,
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen());
    }
  }
}
