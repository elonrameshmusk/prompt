import 'package:flutter/material.dart';
import 'package:prompt/global_constants.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child: const Center(
              child: Text('Prompt', style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: primary_color,
                fontFamily: 'roboto_mono_bold'
              ),),
            ),
          ),
        ),
      )
    );
  }
}
