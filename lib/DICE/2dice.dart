import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int i = 0, j = 0;
  int? ans;
  List l1 = [
    "assets/images/dice 1.png",
    "assets/images/dice 2.png",
    "assets/images/dice 3.png",
    "assets/images/dice 4.png",
    "assets/images/dice 5.png",
    "assets/images/dice 6.png"
  ];
  List l2 = [
    "assets/images/dice 1.png",
    "assets/images/dice 2.png",
    "assets/images/dice 3.png",
    "assets/images/dice 4.png",
    "assets/images/dice 5.png",
    "assets/images/dice 6.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "TOTAL = ${ans}",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "${l1[i]}",
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  "${l2[j]}",
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Random no = Random();
                  int a = no.nextInt(6);

                  Random r = Random();
                  int b = r.nextInt(6);

                  setState(() {
                    i = a;
                    j = b;

                    ans = i + j + 2;
                  });
                },
                child: Text("ROLL"))
          ],
        ),
      ),
    );
  }
}
