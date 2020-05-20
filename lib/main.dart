import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 6;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: FlatButton(
                onPressed: (){
                  print("Left button");
                },
                padding: EdgeInsets.all(0.0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: FlatButton(
                onPressed: (){
                  print("right button");
                },
                padding: EdgeInsets.all(0.0),
                child: Image.asset('images/dice1.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
