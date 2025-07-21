import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
 const StartScreen(this.startQuiz,{super.key});

 final void Function() startQuiz;
  @override
  Widget build(context){
    return  Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
        Image.asset('assets/images/quiz-logo.png',
        color: const Color.fromARGB(148, 255, 255, 255),
        width: 300),
        SizedBox(height: 80),
      const Text('Learn Flutter the Fun Way!',  
      style: TextStyle(
       color: Colors.white,
       fontSize: 24,
      ),
      ),
      const SizedBox(height: 30),
      OutlinedButton.icon(
        onPressed:startQuiz,
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 30, 39, 201),
      ),
      icon:const Icon(Icons.arrow_right_alt), 
      label: const Text('Start Quiz', 
      style: TextStyle(
      fontSize:24),
      ),
      )
        ],
      ),
    );  
  }
}