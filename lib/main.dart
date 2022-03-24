import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[600],
        title: Text('Dicee 2'),
        centerTitle: true,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;
  void randomizeDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 10, 20),
                child: Image.asset('images/dice$leftDice.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                child: Image.asset('images/dice$rightDice.png'),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.0),
        ElevatedButton(
            child: Text('Randomize'),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange[600],
            ),
            onPressed: () {
              randomizeDice();
            }),
      ],
    );
  }
}
