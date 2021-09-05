import 'dart:math';
/*
JUST DO IN GAME_PAGE.dart
 */
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.person,
              size: 80.0,
              color: Colors.pinkAccent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 20.0,
                  height: 20.0,
                  color: Colors.pink,
                ),
                Padding(
                  //padding: const EdgeInsets.all(20.0),
                  //padding: const EdgeInsets.only(left: 20.0,right: 50.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 0.0, horizontal: 20.0),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: 20.0,
                  height: 20.0,
                  color: Colors.deepOrange,
                ),
              ],
            ),
            Text(
              'ชนัญญา เอี่ยมประโคน',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
            ),
            Text('Flutter', textAlign: TextAlign.center),
            Text('123', textAlign: TextAlign.center),
            Text('456', textAlign: TextAlign.center),
            ElevatedButton(
              onPressed: () {},
              child: Text('RANDOM'),
            ),
          ],
        ),
      ),
    );
  }
}
