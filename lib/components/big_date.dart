import 'package:flutter/material.dart';

class BigDate extends StatefulWidget {
  const BigDate({Key? key}) : super(key: key);

  @override
  State<BigDate> createState() => _BigDateState();
}

class _BigDateState extends State<BigDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'Wednesday',
            style: TextStyle(fontSize: 32),
          ),
          Text(
            'January 1, 2023',
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
