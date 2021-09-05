import 'dart:math';
import 'package:flutter/material.dart';
/*
JUST DO IN GAME_PAGE.dart
 */
class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 110, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 80.0,
                    color: Colors.black45,
                  ),
                  Text(
                    'กรุณาใส่รหัสผ่าน',
                    style: TextStyle(fontSize: 28.0),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(num: 1),
                    buildButton(num: 2),
                    buildButton(num: 3),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(num: 4),
                    buildButton(num: 5),
                    buildButton(num: 6),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(num: 7),
                    buildButton(num: 8),
                    buildButton(num: 9),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 75.0,
                      height: 75.0,
                    ),
                    buildButton(num: 0),
                    Container(
                      width: 75.0,
                      height: 75.0,
                      child: Icon(
                        Icons.backspace_outlined,
                        color: Colors.black38,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text('ลืมรหัสผ่าน'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton({var num}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Text(
            '$num',
            style: TextStyle(fontSize: 30.0),
          ),
        ),
        width: 75.0,
        height: 75.0,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black26, width: 2.5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.0), // สีเงา
                offset: Offset(2, 4), // ทิศทางของเงาในแนวนอนและแนวตั้ง ตามลำดับ
                blurRadius: 4.0,
                spreadRadius: 2.0,
              )
            ]),
      ),
    );
  }
}
