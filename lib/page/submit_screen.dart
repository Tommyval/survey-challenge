import 'package:flutter/material.dart';
import 'package:new_challenge/routes/routes.dart';

import 'package:new_challenge/services/question_list_service.dart';
import 'package:new_challenge/services/sign.dart';
import 'package:new_challenge/utils/extension.dart';
import 'package:provider/provider.dart';

class Submitscreen extends StatelessWidget {
  const Submitscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Utils.maincolor,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  title: const Text('Would you like to take another survey'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RouteManager.startpage);
                        },
                        child: const Text('yes')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('No')),
                  ]);
            },
          );
        },
        child: const Icon(
          Icons.restart_alt,
          size: 50,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Consumer<Signin>(
          builder: (context, value, child) {
            return Center(
              child: Text(
                '${value.username}! This is your opinion',
                style: const TextStyle(color: Colors.black),
              ),
            );
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Image(image: AssetImage('assets/images/thanks.jpg')),
            ),
            Consumer<QuestionService>(
              builder: (context, value, child) {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: value.currentQuestion.questions.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            value.currentQuestion.questions[index].questions,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              value.currentQuestion.questions[index]
                                      .getAnswer() ??
                                  '',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.grey),
                            ))
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
