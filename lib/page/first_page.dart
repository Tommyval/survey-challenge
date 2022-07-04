import 'package:flutter/material.dart';
import 'package:new_challenge/models/question_list.dart';

import 'package:new_challenge/routes/routes.dart';
import 'package:new_challenge/services/question_list_service.dart';
import 'package:new_challenge/utils/extension.dart';
import 'package:provider/src/provider.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.primarycolor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Your opinion in few\n minutes',
              style: TextStyle(
                  color: Utils.maincolor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'By filling this survey, your opinion really goes a long way in the medical world reducing the risk of breast cancer',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: SizedBox(
              width: double.infinity,
              child: MaterialButton(
                color: Utils.maincolor,
                shape: const StadiumBorder(
                    side: BorderSide(width: 1, style: BorderStyle.solid)),
                onPressed: () {
                  Navigator.of(context).pushNamed(RouteManager.questionpage);
                  context.read<QuestionService>().currentQuestion =
                      QuestionList();
                },
                child: const Text(
                  'Start survey',
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
