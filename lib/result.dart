import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase{
    String resultText;
    if(resultScore <= 8) {
      resultText = "You're innocent!";
    } else if(resultScore <= 12) {
      resultText = "You're likeable.";
    } else if(resultScore <= 16) {
      resultText = "You're strange";
    } else {
      resultText = "You're so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        this.resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
