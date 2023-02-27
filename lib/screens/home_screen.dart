import 'package:flutter/material.dart';
import 'package:prompt/components/person_container.dart';
import '../components/big_date.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: Column(
              children: [
                const BigDate(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          print('days');
                        },
                        child: const Text('Days')),
                    OutlinedButton(
                        onPressed: () {
                          print('reminders');
                        },
                        child: const Text('Reminders'))
                  ],
                ),
                Expanded(
                  child: Scrollbar(
                    thickness: 100,
                    radius: const Radius.circular(10),
                    child: ListView(
                      children: const [
                        PersonContainer(
                          imgpath: 'assets/images/tarun.jpg',
                          name: 'Tarun',
                          occasion: 'National maths day',
                        ),
                        PersonContainer(
                            imgpath: 'assets/images/ganapathi.jpg',
                            name: 'Ganapathi',
                            occasion: 'Birthday'),
                        PersonContainer(
                            imgpath: 'assets/images/mummydaddy.jpg',
                            name: 'Mummy daddy',
                            occasion: 'Wedding anniversary'),
                        PersonContainer(
                            imgpath: 'assets/images/veterinary.jpg',
                            name: 'Veterinary day',
                            occasion: 'veterinary day'),
                        PersonContainer(
                          imgpath: 'assets/images/chetan.jpg',
                          name: 'Chetan',
                          occasion: 'Birthday',
                        ),
                        PersonContainer(
                          imgpath: 'assets/images/tarun.jpg',
                          name: 'Tarun',
                          occasion: 'National maths day',
                        ),
                        PersonContainer(
                            imgpath: 'assets/images/ganapathi.jpg',
                            name: 'Ganapathi',
                            occasion: 'Birthday'),
                        PersonContainer(
                            imgpath: 'assets/images/mummydaddy.jpg',
                            name: 'Mummy daddy',
                            occasion: 'Wedding anniversary'),
                        PersonContainer(
                            imgpath: 'assets/images/veterinary.jpg',
                            name: 'Veterinary day',
                            occasion: 'veterinary day'),
                        PersonContainer(
                          imgpath: 'assets/images/chetan.jpg',
                          name: 'Chetan',
                          occasion: 'Birthday',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                )
              ],
            ),
          )),
          Container(
            width: 60,
            color: Colors.pink,
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
                        child: Text('$i'),
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
          print('add person');
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
