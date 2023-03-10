import 'package:flutter/material.dart';
import 'package:prompt/components/reminder_container.dart';
import 'package:prompt/global_constants.dart';
import 'package:prompt/screens/add_reminder_screen.dart';
import '../components/big_date.dart';
class RemindersScreen extends StatefulWidget {
  const RemindersScreen({Key? key}) : super(key: key);

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {
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
                  color: primary_color,
                  child: Column(
                    children: [
                      const BigDate(color: Colors.white,),
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
                                child: const Center(
                                    child: Text(
                                      'Days',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'roboto_mono_regular',
                                        color: Colors.white,
                                      ),
                                    )),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  print('remidners');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2)),
                                  child: const Center(
                                      child: Text(
                                        'Reminders',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'roboto_mono_regular',
                                          color: Colors.white
                                        ),
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Scrollbar(
                            thumbVisibility: true,
                            controller: _firstController,
                            thickness: 10, //width of scrollbar
                            radius: const Radius.circular(
                                20), //corner radius of scrollbar
                            scrollbarOrientation: ScrollbarOrientation.left,
                            child: ListView.builder(
                                controller: _firstController,
                                itemCount: 20,
                                itemBuilder: (context, index) => const ReminderContainer())),
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
                color: Colors.white,
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
                            child: Text('$i', style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'roboto_mono_regular',
                                color: Colors.black
                            ),),
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
            child: const Icon(Icons.add, color: primary_color, size: 30,),
            backgroundColor: Colors.white,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ));
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
    const AddRemindersScreen(),
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

