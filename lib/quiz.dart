
import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';


class Quiz extends StatefulWidget{
 const Quiz({super.key});

 @override
  State<Quiz> createState() {
    return _QuizState();  
  } 
}

class _QuizState extends State<Quiz>{

 List<String>selectedAnswers =[];
 var activeScreen='start-screen';

  void switchScreen(){
    setState(() {
      activeScreen='questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
        selectedAnswers=[];
        setState(() {
           activeScreen='start-screen';
        });
       
    }
  }
@override
  Widget build(context){
    Widget screenWidget= StartScreen(switchScreen);

  if(activeScreen == 'questions-screen'){
    screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer,);
  }

    return  MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors:[
               Color.fromARGB(255, 69, 6, 177),
               Color.fromARGB(255, 167, 146, 202),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            ),
            ),

        child: screenWidget,
      ),
  ),
    );
}
}