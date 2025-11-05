import 'package:doctorproject/core/router/routes.dart';
import 'package:doctorproject/features/login/login_screen.dart';
import 'package:doctorproject/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen(),);
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen(),);
      default:
        return MaterialPageRoute(builder: (_)=>Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }

  }
}