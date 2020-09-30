import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Center(
              child:
                  Text('Топ 10 персонажей из аниме по рейтингу пользователей')),
          backgroundColor: Colors.blue[900],
        ),
        body: MyBody(),
      ),
    ),
  );
}

class MyBody extends StatefulWidget {
  @override
  _MyBodyState createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  var leftNum = 1;
  var rightNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Column(
            children: [
              Text(leftNum.toString()), // Text(rightNum.toString()),
            ],
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftNum = Random().nextInt(10) + 1;
                });
              },
              child: Image.asset('images/$leftNum.jpg'),
            ),
          ),
          Column(
            children: [
              Text(rightNum.toString()), // Text(rightNum.toString()),
            ],
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightNum = Random().nextInt(10) + 1;
                });
              },
              child: Image.asset('images/$rightNum.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
