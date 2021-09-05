import 'dart:math';
import 'package:flutter/material.dart';
/*
JUST DO IN GAME_PAGE.dart
 */
class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var num = Random().nextInt(100).toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.yellow.shade50,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.person,
                  size: 80.0,
                  color: Colors.pink.shade200,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Expanded(child: Container,)
                    Text(
                      'ชนัญญา เอี่ยมประโคน',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 30.0,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Text(
                num,
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 120),
                textDirection: TextDirection.ltr,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('RANDOM'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
