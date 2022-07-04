import 'package:flutter/material.dart';
import 'package:new_challenge/page/models/question_list.dart';
import 'package:new_challenge/page/models/questionmodel.dart';
import 'package:new_challenge/page/submit_screen.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  bool _isPressed = false;
  Color maincolor = const Color(0XFF252C4A);
  Color secondcolor = const Color(0xff117eeb);
  PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text('Breast Cancer Survey'),
        ),
        backgroundColor: maincolor,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Questions ${index + 1}/ ${questions.length}',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    const Divider(
                      height: 15.0,
                      color: Colors.black,
                      thickness: 1.2,
                    ),
                    Center(
                      child: Text(
                        questions[index].questions!,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 18.0),
                          child: MaterialButton(
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              shape: StadiumBorder(
                                  side: BorderSide(
                                      color: secondcolor,
                                      width: 1,
                                      style: BorderStyle.solid)),
                              onPressed: () {
                                setState(() {
                                  _isPressed = !_isPressed;
                                });
                              },
                              color: _isPressed ? Colors.blue : Colors.white,
                              child: Text(
                                questions[index].answers?.toList()[i],
                                style: const TextStyle(color: Colors.black),
                              )),
                        ),
                      ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                            color: secondcolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            onPressed: () {
                              _controller.previousPage(
                                  duration: Duration(seconds: 2),
                                  curve: Curves.bounceOut);
                            },
                            child: Text(
                              'Prev',
                              style: TextStyle(color: Colors.white),
                            )),
                        MaterialButton(
                            color: secondcolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            onPressed: () {
                              _controller.nextPage(
                                  duration: Duration(seconds: 2),
                                  curve: Curves.bounceIn);
                            },
                            child: Text(
                              index + 1 == questions.length
                                  ? 'Submit'
                                  : 'Next page',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ));
  }
}
