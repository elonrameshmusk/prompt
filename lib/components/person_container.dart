import 'package:flutter/material.dart';

class PersonContainer extends StatelessWidget {
  const PersonContainer({Key? key, required this.imgpath, required this.name, required this.occasion}) : super(key: key);
  final String imgpath;
  final String name;
  final String occasion;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
            width: 60,
            height: 60,
            child: Image.asset(imgpath)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(occasion),
            ],
          ),
        ),
        Icon(Icons.more_vert)
      ],
    ));
  }
}
