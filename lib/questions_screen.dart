import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key,required this.onSelectAnswer});

final void Function(String answer) onSelectAnswer;

@override
  State<QuestionsScreen> createState(){
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  var currentQuestionIndex=0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex+=1;
    });
    
  }
  
  @override
  Widget build(context){
 final currentQuestion=questions[currentQuestionIndex];

    return SizedBox(
      width:double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
          Text(currentQuestion.text ,
          style:GoogleFonts.lato(
            color:const Color.fromARGB(255, 30, 36, 212),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
         ...currentQuestion.answers.map(
            (answer) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: AnswerButton(
                answerText: answer,
                onTap: (){
                  answerQuestion(answer);
                },
              ),
              ),
         ),

        
        ],
        ),
      ),
    );
  }
}