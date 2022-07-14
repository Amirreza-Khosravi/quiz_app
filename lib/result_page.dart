// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, this.correctAnswer = 0}) : super(key: key);
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'نتیجه آزمون',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 182, 3, 3),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Image(
                image: AssetImage('images/cup.png'),
              ),
            ),
            Text(
              'پاسخ های صحیح شما',
              style: TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '$correctAnswer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 100,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
