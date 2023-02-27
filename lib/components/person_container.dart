import 'package:flutter/material.dart';

class PersonContainer extends StatelessWidget {
  const PersonContainer(
      {Key? key,
      required this.imgpath,
      required this.name,
      required this.occasion})
      : super(key: key);
  final String imgpath;
  final String name;
  final String occasion;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: Row(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
              ),
              margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              width: 60,
              height: 60,
              child: Image.asset(imgpath),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    occasion,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            const Icon(Icons.more_vert)
          ],
        ));
  }
}
