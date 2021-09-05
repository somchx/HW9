import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  int num=0;
  bool continueGame = false;
  bool yourTurn=false;

  Widget build(BuildContext context) {

    _handleClickONE() {
      setState(() {
        num =num+ 1;
        yourTurn=!yourTurn;
      });
    }_handleClickTWO() {
      setState(() {
        num =num+ 2;
        yourTurn=!yourTurn;
      });
    }_handleClickTHREE() {
      setState(() {
        num =num+ 3;
        yourTurn=!yourTurn;
      });
    }
    _handleClickNEWGAME() {
      setState(() {
        num =0;
        yourTurn=false;
        continueGame = false;
      });
    }
    if(num>=20){
      continueGame=!continueGame;
    }
    int point =20-num;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.fill
          ),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: yourTurn&&!continueGame ?_handleClickTHREE:null,
                        style: ElevatedButton.styleFrom(primary: Colors.red,),
                        child: Text('3', style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 120,
                        child: ElevatedButton(
                          onPressed: yourTurn&&!continueGame ?_handleClickTWO:null,
                          style: ElevatedButton.styleFrom(primary: Colors.red,),
                          child: Text('2', style: TextStyle(fontSize: 40.0),
                          ),
                        ),
                      ),
                    ),SizedBox(
                      width: 120,
                      child:  ElevatedButton(
                        onPressed: yourTurn&&!continueGame ?_handleClickONE:null,
                        style: ElevatedButton.styleFrom(primary: Colors.red,),
                        child: Text('1', style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ],

                ),
                Row(

                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            for(var i=0;i<num;i++)
                              Icon(Icons.star, size: 25.0, color: Colors.purple,),
                            for(var j=0;j<point;j++)
                              Icon(Icons.star_border, size: 25.0, color: Colors.purple,),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child:!continueGame ? IconButton(onPressed:yourTurn? () {}:null,
                              icon: Icon(Icons.keyboard_arrow_up),iconSize: 75.0,):null,
                          ),
                          !continueGame ?Text('$num', style: TextStyle(fontSize: 100)):
                          Column(
                            children: [
                              Center(child:!yourTurn? Text(' BULE \n\t win!', style: TextStyle(fontSize: 75.0),):
                              Text(' RED \n win!', style: TextStyle(fontSize: 75.0),),),
                              OutlinedButton(
                                onPressed: _handleClickNEWGAME,
                                child: Text(
                                  'NEW GAME',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),

                          Center(
                            child:!continueGame ?  IconButton(onPressed:!yourTurn?() {}:null,
                              icon: Icon(Icons.keyboard_arrow_down),iconSize: 75.0,):null,
                          ),

                        ],
                      ),
                    )
                  ],

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: !yourTurn&&!continueGame ?_handleClickONE:null,
                        style: ElevatedButton.styleFrom(primary: Colors.blue,),
                        child: Text('1', style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            onPressed: !yourTurn&&!continueGame ?_handleClickTWO:null,
                            style: ElevatedButton.styleFrom(primary: Colors.blue,),
                            child: Text('2', style: TextStyle(fontSize: 40.0),
                            ),
                          ),
                        ),
                      ),
                    ),SizedBox(
                      width: 120,
                      child: ElevatedButton(
                        onPressed: !yourTurn&&!continueGame ?_handleClickTHREE:null,
                        style: ElevatedButton.styleFrom(primary: Colors.blue,),
                        child: Text('3', style: TextStyle(fontSize: 40.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ), // Your widget tree
        ),
      ),
    );
  }
}
