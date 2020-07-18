import 'package:flutter/material.dart';

//a good rule is using one main widget per file

// its better to split the widgets of the app into smaller
// custom widgets, because it will make the rebuild more efficient, help performance,
//  and easier to manage the code
class Question extends StatelessWidget {
  // add the final, so the value of the variable stay immutable and cannot reassigned
  // after being initialized
  // final keywork its like the const keyword
  final String _questionText;

//  the questionText argument will be required
// with the {} will be a named arg
//right now is a positional arg
  Question(this._questionText);
  @override
  Widget build(BuildContext context) {
    // learn more about the Container() spacing at 4:03:00
    return Container(
      //it centers the text because e container moves the pos of the child
      width: double.infinity,
      margin: EdgeInsets.all(10), //adds more space to the question block
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

//stateless it gets re-rendered from the input data
//it gets new text and rebuilds the widget with the new text and updates the screen
// rebuild the stateless widget, not internally because internal data is immutable,
// but because data from outside changed  when the build method ran again.
