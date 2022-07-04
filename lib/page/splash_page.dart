import 'package:flutter/material.dart';
import 'package:new_challenge/page/start_screen.dart';

class Splashpage extends StatelessWidget {
  const Splashpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => StartPage()));
    });
    return Scaffold(
      backgroundColor: const Color(0XFFFBE5EF),
      body: Column(
        children: [
          Expanded(
            child: Container(
                child:
                    const Image(image: AssetImage('assets/images/breast.png'))),
          ),
        ],
      ),
    );
  }
}
