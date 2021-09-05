import 'dart:ui';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  var list = [1, 2, 3];
  bool showNumber = false;

  _handleClickButton() {
    setState(() {
      list.add(list.length + 1);
    });
  }

  _handleClickButton2() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: showNumber
                  ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list.map((e) => Text(e.toString())).toList(),
              )
                  : null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _handleClickButton, child: Text('TEST')),
                TextButton(
                    onPressed: _handleClickButton2, child: Text('TEST2')),
                //ห้ามมี () ตอนเรียกใช้ฟังก์ชัน
              ],
            ),
            Image(
              image: AssetImage('assets/images/op.png'),
              width: 100,
              height: 50,
              fit: BoxFit.fill,
              //fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
