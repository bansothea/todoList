import 'package:get/get.dart';
import 'package:todolist/app/models/Authentication/login/login_view.dart';
import 'package:todolist/app/models/Authentication/signup/signup_view.dart';
import 'package:todolist/app/models/home/home_view.dart';

class AppRoutes{
  static const String home='/';
  static const String login='/login';
  static const String signup='/signup'; 

  static final List  <GetPage> pages=[ 
      GetPage(name: home, page: () => HomeScreen()),
      GetPage(name: login, page: () => LoginScreen()),
      GetPage(name: signup, page: () =>SignupScreen())
  ];
}