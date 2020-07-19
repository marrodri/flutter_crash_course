import 'package:flutter/material.dart';

// for changing data from another area
class Answer extends StatelessWidget {
  //it initializes with any type of function, by storing its address
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
              //it passes the pointer of the function answerQuestion,
              // and not the returned value of the function answerQuestion(),
              // because it executes right away when the parenthesis are on the code
              //Colors class is not intantiated but a grouping mechanism
              color: Colors.blue,
              textColor:  Colors.white,
              child: Text(answerText),
              onPressed: selectHandler,
            ),
    );
  }
}