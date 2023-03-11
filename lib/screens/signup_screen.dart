import 'package:flutter/material.dart';
import 'package:prompt/global_constants.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            backgroundColor: Colors.white,
            title: const Text(
              'Create account in Prompt', style: TextStyle(
                fontSize: 16,
                fontFamily: 'roboto_mono_regular',
                fontWeight: FontWeight.normal,
                color: Colors.black
            ),
            ),
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            ),
          ),
          body: Container(
            child: Column(
              children: [
                TextField(
                  style: const TextStyle(
                    fontFamily: 'roboto_mono_regular',
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(2.0)
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: primary_color),
                        borderRadius: BorderRadius.circular(2.0)
                    )
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
