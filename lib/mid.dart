import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  int pointBuleR1 = 0;
  int pointRedR1 =0;
  int pointBuleR2 = 0;
  int pointRedR2 =0;
  int pointBuleR3 = 0;
  int pointRedR3 =0;
  bool start=false;
  bool round1 =false;
  bool round2 =false;
  bool round3 =false;
  int round=1;
  int total_bule=0;
  int total_red=0;
  bool win = false;
  bool endGame = false;


  Widget build(BuildContext context) {
    _handleClickRED() {
      setState(() {
        start = true;
        round1 =true;
        if(round==1){
          pointRedR1 =10;
          pointBuleR1 = 9;
          round=2;
        }
        else if(round==2){
          pointRedR2 =10;
          pointBuleR2 = 9;
          round=3;
          round2 =true;
        }
        else if(round==3){
          pointRedR3 =10;
          pointBuleR3 = 9;
          round=4;
          round3 =true;
        }
        total_red=pointRedR1+pointRedR2+pointRedR3;
        total_bule=pointBuleR1+pointBuleR2+pointBuleR3;
        if(round==4){
          if(total_red>total_red){
            win=!win;
          }
        }
      }

      );
    }
    _handleClickBLUE() {
      setState(() {
        start = true;
        round1 =true;
        if(round==1) {
          pointRedR1 = 9;
          pointBuleR1 = 10;
          round=2;
        }
        else if(round==2){
          pointRedR2 = 9;
          pointBuleR2 = 10;
          round=3;
          round2 =true;
        }
        else if(round==3){
          pointRedR3 = 9;
          pointBuleR3 = 10;
          round=4;
          round3 =true;
        }
        total_red=pointRedR1+pointRedR2+pointRedR3;
        total_bule=pointBuleR1+pointBuleR2+pointBuleR3;
        if(round==4){
          endGame =!endGame;
          if(total_red>total_red){
            win=!win;
          }
        }
      }

      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
      ),
      body: Container(

        child: Container(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                      //width: 100,
                      height: 50,
                      //fit: BoxFit.fill,
                      //fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      height: 20,
                      width: 400,
                      color: Colors.black,
                      child: Center(child: Text("Women's Light (57-60kg) Semi-final",style: TextStyle(color: Colors.white),))),

                  Row(
                    children: [
                      Icon(Icons.person, size: 75.0, color: Colors.red),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: AssetImage('assets/images/flag_ireland.png'),
                                height: 25,
                              ),
                              Text(" IRELAND",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text("HARRINGTON Kellie Anne",style: TextStyle(fontSize: 10),),
                          ),
                        ],
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Center(child:round==4&&(total_red>total_bule)?Icon(Icons.check, size: 25.0, color: Colors.green,):null,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.person, size: 75.0, color: Colors.indigo),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(

                            children: [
                              Image(
                                image: AssetImage('assets/images/flag_thailand.png'),
                                height: 25,
                              ),
                              Text(" THAILAND",style: TextStyle(fontSize: 15),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text("SEESONDEE Sudaporn",style: TextStyle(fontSize: 10),),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Center(child:round==4&&(total_bule>total_red)?Icon(Icons.check, size: 25.0, color: Colors.green,):null,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      //width: 10,
                      height: 10,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 10,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  start? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('ROUND 1', style: TextStyle(fontSize: 13.0),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Center(child: Text('$pointRedR1',style: TextStyle(fontSize: 20.0),))),
                          Expanded(child: Center(child: Text('$pointBuleR1',style: TextStyle(fontSize: 20.0),))),
                        ],
                      ),
                      Divider(thickness: 2.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('ROUND 2', style: TextStyle(fontSize: 13.0),),
                      ),
                    ],
                  ):Text(''),
                  round1==true? Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Center(child: Text('$pointRedR2',style: TextStyle(fontSize: 20.0),))),
                          Expanded(child: Center(child: Text('$pointBuleR2',style: TextStyle(fontSize: 20.0),))),
                        ],
                      ),Divider(thickness: 2.0,),
                    ],
                  ):Text(''),

                  round2==true? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('ROUND 3', style: TextStyle(fontSize: 13.0),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Center(child: Text('$pointRedR3',style: TextStyle(fontSize: 20.0),))),
                          Expanded(child: Center(child: Text('$pointBuleR3',style: TextStyle(fontSize: 20.0),))),
                        ],
                      ),Divider(thickness: 2.0,),
                    ],
                  ):Text(''),

                  round3==true? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('TOTAL', style: TextStyle(fontSize: 13.0),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: Center(child: Text('$total_red',style: TextStyle(fontSize: 20.0),))),
                          Expanded(child: Center(child: Text('$total_bule',style: TextStyle(fontSize: 20.0),))),
                        ],
                      ),Divider(thickness: 2.0,),
                    ],
                  ):Text(''),
                ],
              ),



              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _handleClickRED,
                          style: ElevatedButton.styleFrom(primary: Colors.red,),
                          child: Icon(
                            Icons.person,
                            size: 40.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 180,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: _handleClickBLUE,
                          style: ElevatedButton.styleFrom(primary: Colors.indigo,),
                          child: Icon(
                            Icons.person,
                            size: 40.0,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

