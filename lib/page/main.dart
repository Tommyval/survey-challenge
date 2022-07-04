import 'package:flutter/material.dart';
import 'package:new_challenge/page/submit_screen.dart';
import 'package:new_challenge/routes/routes.dart';
import 'package:new_challenge/services/question_list_service.dart';
import 'package:new_challenge/services/sign.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Signin(),
        ),
        ChangeNotifierProvider(
          create: (context) => QuestionService(),
        )
      ],
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RouteManager.homepage,
          onGenerateRoute: RouteManager.generateRoute,
        );
      },
    );
  }
}
