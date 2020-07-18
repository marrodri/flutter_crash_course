// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  
  void answerQuestion() {
    //takes a function
    //setState is a func that forces to re-rend a part of the UI
    //it calls build again based of this current widget and class data
    setState( 
      () {
      _questionIndex = _questionIndex + 1;
      } //anonymous function
    ); //SetState 
    // questionIndex = questionIndex + 1;
  }

  @override
  //this returns a widget
  //every widget is a dart class, that has a build method
  Widget build(BuildContext context) {
    var questions = [
      'Whats your favorite color?',
      'Whats your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex],),
            RaisedButton(
              child: Text('answer1'),
              //it passes the pointer of the function answerQuestion,
              // and not the returned value of the function answerQuestion(),
              // because it executes right away when the parenthesis are on the code
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer2'),
              //anonymous function, arrow pattern
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('answer3'),
              //anonymous function, normal pattern
              onPressed: () {
                print('Answer 3 chosen');
              },
            ),
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