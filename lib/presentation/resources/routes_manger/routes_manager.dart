import 'package:e_commerce/presentation/forgetpassword_view/forgetpassword_view.dart';
import 'package:e_commerce/presentation/login_view/login_view.dart';
import 'package:e_commerce/presentation/onBoadring_view/onBoarding_view.dart';
import 'package:e_commerce/presentation/signup_view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../splash/splash_view.dart';
class Routes{
  static const String splashRoute="/";
  static const String onBoardingRoute="/onBoarding_view";
  static const String loginRoute="/login_view";
  static const String forgetPasswordRoute="/forgetpassword_view";
  static const String signUpRoute="/signup_view";
}

class RouteGenerator{

  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){


      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=> const SplashView());
        
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_)=> const OnBoarding());


      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_)=> const LoginView());


      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_)=> const ForgetPassWordView());


      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_)=> const SignUpView());
    }
    return MaterialPageRoute(builder: (_)=> const Scaffold(
      body: Center(child: Text('error occurred  please restart the app'),),
    ));
  }

}