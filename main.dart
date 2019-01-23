import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  void onPressed() {
    setState(() {
      print("its working alarm");
    });
  }

  int hmeScore = 0;
  int awyScore = 0;

  void hmePts(int points) {
    print(points);
    setState(() {
      hmeScore += points;
    });
  }

  void awyPts(int points) {
    print(points);
    setState(() {
      awyScore += points;
    });
  }

  void resetScores() {
    setState(() {
      awyScore = hmeScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.fromLTRB(5.0, 60.0, 5.0, 0.0),
          child: Column(
            //text sets
            children: <Widget>[
              new Container(
                color: Colors.grey[800],
                child: Row(
                  children: <Widget>[
                    // home team tags

                    Expanded(
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            cPadding(7.0),

                            //team side
                            Text(
                              "Home team",
                              style: TextStyle(fontWeight: FontWeight.w800),
                              textScaleFactor: 1.4,
                            ),
                            cPadding(9.0),
                            Text(
                              "Scores",
                              textScaleFactor: 1.1,
                            ),
                            cPadding(9.0),

                            // team score updating
                            Text(
                              hmeScore.toString(),
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 24.0,
                              ),
                            ),
                            cPadding(14.0),
                          ],
                        ),
                      ),
                    ),

                    // away team tags
                    Expanded(
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            cPadding(7.0),

                            //team side
                            Text(
                              "Away team",
                              style: TextStyle(fontWeight: FontWeight.w800),
                              textScaleFactor: 1.4,
                            ),
                            cPadding(9.0),
                            Text(
                              "Scores",
                              textScaleFactor: 1.1,
                            ),
                            cPadding(9.0),

                            // team score updating
                            Text(
                              awyScore.toString(),
                              textScaleFactor: 1.2,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 24.0,
                              ),
                            ),
                            cPadding(14.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //button sets
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      cPadding(8.0),
                      // hmeBtn("1pt", Colors.blue),
                      BtnScr(
                        onPressed: () {
                          hmePts(1);
                        },
                        clr: Colors.blue,
                        text: "1pts",
                      ),
                      cPadding(10.0),
                      // hmeBtn("2pts", Colors.blue),
                      BtnScr(
                        onPressed: () {
                          hmePts(2);
                        },
                        clr: Colors.blue,
                        text: "2pts",
                      ),
                      cPadding(10.0),
                      // hmeBtn("3pts", Colors.blue),
                      BtnScr(
                        onPressed: () {
                          hmePts(3);
                        },
                        clr: Colors.blue,
                        text: "3pts",
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      cPadding(8.0),
                      // hmeBtn("1pt", Colors.red),
                      BtnScr(
                        onPressed: () {
                          awyPts(1);
                        },
                        clr: Colors.red,
                        text: "1pts",
                      ),
                      cPadding(10.0),

                      // hmeBtn("2pts", Colors.red),
                      BtnScr(
                        onPressed: () {
                          awyPts(2);
                        },
                        clr: Colors.red,
                        text: "2pts",
                      ),

                      cPadding(10.0),
                      // hmeBtn("3pts", Colors.red),
                      BtnScr(
                        onPressed: () {
                          awyPts(3);
                        },
                        clr: Colors.red,
                        text: "3pts",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: //bottom reset button
            Container(
                color: Colors.grey[300],
                child: IconButton(
                    icon: Icon(Icons.restore), onPressed: resetScores)),
      ),
    );
  }
}

Widget cPadding(double myp) {
  return Padding(padding: EdgeInsets.all(myp));
}

class BtnScr extends StatelessWidget {
  BtnScr({this.text, this.clr, this.onPressed});

  final VoidCallback onPressed;
  final String text;
  final Color clr;

  @override
  Widget build(
    BuildContext context,
  ) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text(text),
      color: clr,
      elevation: 8.0,
    );
  }
}

// class BtnAwy extends StatelessWidget {
//   BtnAwy({this.text, this.clr, this.onPressed});

//   final VoidCallback onPressed;
//   final String text;
//   final Color clr;

//   @override
//   Widget build(
//     BuildContext context,
//   ) {
//     return RaisedButton(
//       onPressed: onPressed,
//       child: Text(text),
//       color: clr,
//       elevation: 8.0,
//     );
//   }
// }
