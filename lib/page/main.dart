import 'package:flutter/material.dart';
import 'package:new_challenge/page/models/sign.dart';
import 'package:new_challenge/page/question_page.dart';
import 'package:new_challenge/page/start_screen.dart';
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
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: QuestionPage(),
      ),
    );
  }
}
