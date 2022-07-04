import 'package:flutter/material.dart';

import 'package:new_challenge/routes/routes.dart';
import 'package:new_challenge/services/sign.dart';
import 'package:new_challenge/utils/extension.dart';
import 'package:provider/src/provider.dart';

class StartPage extends StatefulWidget {
  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  TextEditingController inputController = TextEditingController();
  bool _strtbutton = false;

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Utils.primarycolor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.android,
                  size: 100,
                ),
                const SizedBox(
                  height: 75,
                ),
                const Text(
                  'Hello Again!',
                  style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'This survey requires your view on the prominent',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  'issue on Breast cancer.',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            _strtbutton = value.isNotEmpty ? true : false;
                          });
                        },
                        keyboardType: TextInputType.text,
                        controller: inputController,
                        decoration: const InputDecoration(
                            border: InputBorder.none, hintText: 'Name'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  width: 310,
                  child: ElevatedButton(
                      onPressed: () {
                        _strtbutton == true;
                        context.read<Signin>().username = inputController.text;
                        Navigator.of(context).pushNamed(RouteManager.firstpage);
                      },
                      child: const Text(
                        'Proceed',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Utils.maincolor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Membership()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Membership extends StatelessWidget {
  const Membership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Not a Member?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Regester Now',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
