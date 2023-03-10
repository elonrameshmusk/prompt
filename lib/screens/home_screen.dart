import 'package:flutter/material.dart';
import 'package:prompt/components/person_container.dart';
import 'package:prompt/global_constants.dart';
import 'package:prompt/screens/add_person_screen.dart';
import '../components/big_date.dart';

const persons = [
  {
    'name': 'Tarun',
    'image': 'assets/images/tarun.jpg',
    'day': 'National maths day'
  },
  {
    'name': 'Ganapathi',
    'image': 'assets/images/tarun.jpg',
    'day': 'National maths day'
  },
  {
    'name': 'Mummy daddy',
    'image': 'assets/images/tarun.jpg',
    'day': 'National maths day'
  },
  {
    'name': 'N',
    'image': 'assets/images/tarun.jpg',
    'day': 'National maths day'
  },
  {
    'name': 'Chetan',
    'image': 'assets/images/tarun.jpg',
    'day': 'National maths day'
  },
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _firstController = ScrollController();
  int month = 1;
  int date = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  const BigDate(
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 0, 18, 4),
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print('days');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(2.0)),
                              child: const Center(
                                  child: Text(
                                'Days',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'roboto_mono_regular',
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              print('remidners');
                            },
                            child: const Center(
                                child: Text(
                              'Reminders',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'roboto_mono_regular',
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: RawScrollbar(
                        interactive: true,
                        thumbVisibility: true,
                        thumbColor: primary_color,

                        controller: _firstController,
                        thickness: 8, //width of scrollbar
                        radius: const Radius.circular(
                            2), //corner radius of scrollbar
                        scrollbarOrientation: ScrollbarOrientation.left,
                        child: ListView.builder(
                            controller: _firstController,
                            itemCount: 20,
                            itemBuilder: (context, index) => PersonContainer(
                                  name: persons[index % 5]['name']!,
                                  imgpath: persons[index % 5]['image']!,
                                  occasion: persons[index % 5]['day']!,
                                ))),
                  ),
                  Container(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 60,
            color: primary_color,
            child: ListView(
              semanticChildCount: 31,
              children: [
                for (var i = 1; i <= 31; i++)
                  GestureDetector(
                    onTap: () {
                      print("pressed $i");
                      setState(() {
                        date = i;
                      });
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      color: (date == i) ? Colors.limeAccent : null,
                      child: Center(
                        child: Text(
                          '$i',
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'roboto_mono_regular',
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(2)),
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: primary_color,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const AddPersonScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
