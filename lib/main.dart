// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

// void is a type of datathat means nothing
//null is a value that means nothing, 0

//
// this class, can be recreated
//any external data passed, will recreate with the new data, rebuilding the output
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

//the state class is persitent, its attached to the widget
// any data here its not recreated, neither reset here in state
// the _ to the class name transform a public class into a private class
class _MyAppState extends State<MyApp> {
  //common practice
  var _questionIndex = 0;

  void _answerQuestion() {
    //takes a function
    //setState is a func that forces to re-rend a part of the UI
    //it calls build again based of this current widget and class data
    setState(() {
      _questionIndex = _questionIndex + 1;
    } //anonymous function
        ); //SetState
    // questionIndex = questionIndex + 1;
  }

  @override
  //this returns a widget
  //every widget is a dart class, that has a build method
  Widget build(BuildContext context) {
    //adding a data structure for the questions and for the answers
    // creating a list of maps
    var questions = [
      {
        'questionText': 'Whats your favorite color?',
        'answers': ['black', 'red', 'green', 'white'],
      },
      {
        'questionText': 'Whats your favorite animal?',
        'answers': ['rabbit', 'cat', 'dog', 'penguin'],
      },
      {
        'questionText': 'who\'s your favorite instructor?',
        'answers': ['max', 'max', 'max', 'max'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            //passing the address of the function is known as "callback",
            // because the receiving widget calls it later in the future
            //here we have a list of widgets
            // the map method executes the function on every element of the list
            // iterate for every answer in the answers list 
            // of the current questions index
            //the parenthesis will make the 'answers' will have a list of strings
            //the dots take a list and pulls all the values of the nested list out of it
            // , and add them to the current list and individual values, making just one list
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(), //the toList(), will make like transform the map to a list
          ],
        ),
      ),
    );
  }
}

//state is Data/Info used by your App
// App State, Authenticated Users, Loaded Jobs, etc.
// Widget State: Current User Input, Is a Loading Spinner being shown?, etc.
// this state can change di
// Learn more about state in flutter and search stateless vs stateful, important (crash course vid at 3:29:51)

//a good rule is using one main widget per file
