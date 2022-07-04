import 'package:flutter/material.dart';
import 'package:new_challenge/page/models/sign.dart';
import 'package:provider/provider.dart';

class StartPage extends StatelessWidget {
  Textfields? inputcontroller;
  StartPage({this.inputcontroller});
  Color maincolor = const Color(0XFF252C4A);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.android,
                size: 100,
              ),
              SizedBox(
                height: 75,
              ),
              Text(
                'Hello Again!',
                style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'This survey requres your view on the prominent',
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                'issue on Breast and Cervical Cancer.',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Textfields(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: 380,
                child: ElevatedButton(
                    onPressed: () {
                      context.read<Signin>().username =
                          inputcontroller.toString();
                    },
                    child: const Text(
                      'Start Survey',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(maincolor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 25,
              ),
              Membership()
            ],
          ),
        ),
      ),
    );
  }
}

class Textfields extends StatefulWidget {
  Textfields({
    Key? key,
  }) : super(key: key);

  @override
  State<Textfields> createState() => _TextfieldsState();
}

class _TextfieldsState extends State<Textfields> {
  TextEditingController inputcontroller = TextEditingController();

  @override
  void dispose() {
    inputcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: inputcontroller,
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: 'Name'),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
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
