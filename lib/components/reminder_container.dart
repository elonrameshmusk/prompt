import 'package:flutter/material.dart';

class ReminderContainer extends StatefulWidget {
  const ReminderContainer({Key? key}) : super(key: key);

  @override
  State<ReminderContainer> createState() => _ReminderContainerState();
}

class _ReminderContainerState extends State<ReminderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            BoxDecoration(border: Border.all(width: 1, color: Colors.white)),
        margin: const EdgeInsets.fromLTRB(18, 4, 18 , 4),
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                '10:10 am',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'roboto_mono_regular'),
              ),
            ),
            Text(
              'Implement crypto wallet integration feature on the onboarding page of bookbytes app',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'roboto_mono_regular',
                fontSize: 16,
              ),
            ),
          ],
        ));
  }
}
