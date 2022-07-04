import 'package:flutter/material.dart';

import 'package:new_challenge/routes/routes.dart';
import 'package:new_challenge/services/question_list_service.dart';
import 'package:new_challenge/utils/extension.dart';
import 'package:provider/provider.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Utils.maincolor,
          title: const Text('Breast Cancer Survey'),
        ),
        backgroundColor: Utils.primarycolor,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Consumer<QuestionService>(
              builder: (context, value, child) {
                return PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _controller,
                  itemCount: value.currentQuestion.questions.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Questions ${index + 1}/ ${value.currentQuestion.questions.length}',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        const Divider(
                          indent: 10,
                          endIndent: 10,
                          height: 15.0,
                          color: Colors.black,
                          thickness: 1.2,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              value.currentQuestion.questions[index].questions,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 23),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        for (int i = 0;
                            i <
                                value.currentQuestion.questions[index].answers
                                    .length;
                            i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(bottom: 18.0),
                                child: MaterialButton(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 18),
                                    color: value
                                                .currentQuestion
                                                .questions[index]
                                                .selectedAnsers ==
                                            i
                                        ? const Color(0xff90caf9)
                                        : Colors.white,
                                    shape: const StadiumBorder(
                                        side: BorderSide(
                                            color: Utils.maincolor,
                                            width: 1,
                                            style: BorderStyle.solid)),
                                    onPressed: () {
                                      context
                                          .read<QuestionService>()
                                          .setAnswer(index, i);
                                    },
                                    child: Text(
                                      value.currentQuestion.questions[index]
                                          .answers[i]
                                          .toString(),
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 19),
                                    ))),
                          ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                                color: Utils.maincolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                onPressed: () {
                                  _controller.previousPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeInOut);
                                },
                                child: const Text(
                                  'Prev page',
                                  style: TextStyle(color: Colors.white),
                                )),
                            MaterialButton(
                                color: Utils.maincolor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                onPressed: () {
                                  _controller.nextPage(
                                      duration: const Duration(seconds: 1),
                                      curve: Curves.easeIn);
                                  if (index + 1 ==
                                      value.currentQuestion.questions.length) {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed(RouteManager
                                                          .submitscreen);
                                                  context
                                                      .read<QuestionService>()
                                                      .currentQuestion;
                                                },
                                                child: const Text('Yes')),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text('No'))
                                          ],
                                          title: const Text('Submit Survey'),
                                          content: const Text(
                                              'Are you sure you want to submit this survey'),
                                        );
                                      },
                                    );
                                  }
                                },
                                child: Text(
                                  index + 1 ==
                                          value.currentQuestion.questions.length
                                      ? 'Submit'
                                      : 'Next page',
                                  style: const TextStyle(color: Colors.white),
                                )),
                          ],
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ));
  }
}
