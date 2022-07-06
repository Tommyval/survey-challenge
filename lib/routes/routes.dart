import 'package:flutter/material.dart';
import 'package:new_challenge/page/first_page.dart';
import 'package:new_challenge/page/question_page.dart';
import 'package:new_challenge/page/splash_page.dart';
import 'package:new_challenge/page/start_screen.dart';
import 'package:new_challenge/page/submit_screen.dart';

class RouteManager {
  static const String homepage = '/';
  static const String splashpage = '/Splashpage';
  static const String startpage = '/Startpage';
  static const String firstpage = '/Firstpage';
  static const String questionpage = '/Questionpage';
  static const String submitscreen = '/Submitscreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homepage:
        return MaterialPageRoute(
          builder: (context) => const Splashpage(),
        );
      case startpage:
        return MaterialPageRoute(
          builder: (context) => StartPage(),
        );
      case firstpage:
        return MaterialPageRoute(
          builder: (context) => const Firstpage(),
        );
      case questionpage:
        return MaterialPageRoute(
          builder: (context) => const QuestionPage(),
        );
      case submitscreen:
        return MaterialPageRoute(
          builder: (context) => const Submitscreen(),
        );
      default:
        throw const FormatException('route not found');
    }
  }
}
