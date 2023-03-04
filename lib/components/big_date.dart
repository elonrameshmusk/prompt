import 'package:flutter/material.dart';

class BigDate extends StatefulWidget {
  const BigDate({Key? key, required this.color}) : super(key: key);
  final color;
  @override
  State<BigDate> createState() => _BigDateState();
}

class _BigDateState extends State<BigDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: 120,
      padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Wednesday',
            style: TextStyle(fontSize: 32, fontFamily: 'roboto_mono_regular', color: widget.color),
          ),
          Text(
            'January 1, 2023',
            style: TextStyle(fontSize: 16, fontFamily: 'roboto_mono_regular', color: widget.color),
          )
        ],
      ),
    );
  }
}
