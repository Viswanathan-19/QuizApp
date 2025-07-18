
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';


class Quiz extends StatefulWidget{
 const Quiz({super.key});

 @override
  State<Quiz> createState() {
    return _QuizState();  
  } 
}

class _QuizState extends State<Quiz>{
@override
  Widget build(context){
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

        child:const StartScreen(),
      ),
  ),
    );
}
}