import 'package:flutter/material.dart';
import 'package:prompt/global_constants.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.white,
            title: const Text(
              'Create account in Prompt',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'roboto_mono_regular',
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Column(
            children: [
          Container(
            margin: const EdgeInsets.fromLTRB(18, 18, 18, 9),
            child: TextField(
              controller: _emailController,
              style: const TextStyle(
                  fontFamily: 'roboto_mono_regular',
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                labelText: 'Email address',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(2.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(2.0)),
                labelStyle: const TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 9, 18, 18),
            child: TextField(
              obscureText: true,
              controller: _passwordController,
              style: const TextStyle(
                  fontFamily: 'roboto_mono_regular',
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
              decoration: InputDecoration(
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black45, width: 1),
                    borderRadius: BorderRadius.circular(2.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(2.0)),
                labelStyle: const TextStyle(
                  color: Colors.black45,
                ),
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                print(_emailController.text);
                print(_passwordController.text);
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: primary_color,
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(width: 2, color: primary_color)),
                child: const Center(
                    child: Text(
                  'Create account',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'roboto_mono_regular',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              )),
          GestureDetector(
              onTap: () {
                print('sign up with google');
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(width: 2, color: primary_color)),
                child: const Center(
                    child: Text(
                  'Sign up with Google',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'roboto_mono_regular',
                      fontWeight: FontWeight.bold,
                      color: primary_color),
                )),
              )),
          GestureDetector(
              onTap: () {
                print('with apple');
              },
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.0),
                    border: Border.all(width: 2, color: primary_color)),
                child: const Center(
                    child: Text(
                  'Sign up with Apple',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'roboto_mono_regular',
                      fontWeight: FontWeight.bold,
                      color: primary_color),
                )),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
