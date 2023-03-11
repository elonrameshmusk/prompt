import 'package:flutter/material.dart';
import 'package:prompt/global_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:prompt/screens/signin_screen.dart';
import 'package:prompt/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> carousel_image_paths = [
      'assets/images/carousel1.png',
      'assets/images/carousel2.png'
    ];
    const List<String> carousel_captions = [
      "Never again miss any special days",
      "Keep more important things in your mind by adding the less important ones as reminders"
    ];
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            color: Colors.white,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
                items: [1, 2].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: Column(children: [
                          Image.asset(
                            carousel_image_paths[i - 1],
                            height: 300,
                            width: 200,
                          ),
                          Text(carousel_captions[i - 1])
                        ]),
                      );
                    },
                  );
                }).toList(),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0,0,0, 8),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        border: Border.all(width: 2, color: primary_color)),
                    child: const Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'roboto_mono_regular',
                          fontWeight: FontWeight.bold,
                          color: primary_color),
                    )),
                  )),

              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignupScreen()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0,8,0, 0),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.0),
                        border: Border.all(width: 2, color: primary_color)),
                    child: const Center(
                        child: Text(
                      'Create account',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'roboto_mono_regular',
                          fontWeight: FontWeight.bold,
                          color: primary_color),
                    )),
                  )),
            ]),
          ),
        ),
      ),
    );
  }
}
