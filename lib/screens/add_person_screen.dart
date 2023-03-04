import 'package:flutter/material.dart';
import 'package:prompt/global_constants.dart';

import '../components/big_date.dart';

class AddPersonScreen extends StatefulWidget {
  const AddPersonScreen({Key? key}) : super(key: key);

  @override
  State<AddPersonScreen> createState() => _AddPersonScreenState();
}

class _AddPersonScreenState extends State<AddPersonScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.close,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              const BigDate(color: Colors.black,),
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: const EdgeInsets.fromLTRB(18, 18, 0, 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Add Day',
                        style: TextStyle(fontSize: 16, color: primary_color, fontFamily: 'roboto_mono_regular'),
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                        child: Text(
                          'Person name',
                          style: TextStyle(fontSize: 16, fontFamily: 'roboto_mono_regular'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Type here', hintStyle: TextStyle(fontSize: 16, fontFamily: 'roboto_mono_regular')),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(18, 18, 0, 0),
                        child: Text(
                          'Occasion',
                          style: TextStyle(fontSize: 16, fontFamily: 'roboto_mono_regular'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'For eg: national dog day', hintStyle: TextStyle(fontSize: 16, fontFamily: 'roboto_mono_regular') ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(18, 18, 0, 0),
                        child: Text(
                          'Add a picture',
                          style: TextStyle(fontSize: 16, fontFamily: 'roboto_mono_regular'),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(2)),
        onPressed: () {
          print('will be saved!');
        },
        child: const Icon(Icons.save, color: Colors.white, size: 30,),
        backgroundColor: primary_color,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
