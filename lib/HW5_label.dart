import 'dart:math';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/*
JUST DO IN GAME_PAGE.dart
 */
class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget>iconList=[];
    for(var i=0;i<4;i++){
      iconList.add(Icon(Icons.star, size: 30.0, color: Colors.blue,));
    }
    iconList.add(Icon(Icons.star_border, size: 30.0, color: Colors.blue,));
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
              children: [
                Icon(Icons.person, size: 80.0, color: Colors.pink.shade200,),
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ชนัญญา เอี่ยมประโคน',
                      style: TextStyle(fontSize: 20.0),),
                    //
                    Row(
                      children: iconList,
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  Random().nextInt(100).toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 120),
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(onPressed: () {}, child: Text('RANDOM'),),
              //child: ElevatedButton(onPressed: () {}, child: Text('RANDOM'),),
            //TextButton(onPressed: (){ }, child: Text('TEST'))
            ),
          ],
        ),
      ),
    );
  }
}
