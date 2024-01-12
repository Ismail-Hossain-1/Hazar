import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Test/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  List<Question> questionList=getQuestions();
  int currentQuestionIndex=0;
  int score=0;
  Answer? selectedanswer;


  @override
  Widget build(BuildContext context) {
     return  Scaffold(

      backgroundColor:Color.fromARGB(255, 5, 50, 80),
      body:  SafeArea(
        //  margin:: EdgeInsect.symmetric(ho) ,
        child: Column(

           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("Lets play a Quiz", style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),

            ),
            questionwidget(),
            answerlist(),
            nextButton(),

          ],
        ),
      ),
    );

  }
  questionwidget(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(" Question ${currentQuestionIndex+1}/${ questionList.length.toString()}", style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w400,

        ),),
        const SizedBox(height: 30,),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(15),

          ),
          child: Text(questionList[currentQuestionIndex].questionText, style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,

          ),),
        )

      ],
    );
  }
  answerlist(){

    return Column(
        children:   questionList[currentQuestionIndex].answerList.map(
                (e) => answerbutton(e),

        ).toList(),
    );
  }

  Widget answerbutton(Answer answer){

   bool isSelected= answer == selectedanswer;

    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 8, ),
        height: 40,
        child: ElevatedButton(
          child: Text(answer.asnwerText ),
          style: ElevatedButton.styleFrom(

            primary: isSelected? Colors.orangeAccent: Colors.white,
            onPrimary: isSelected? Colors.white : Colors.black,
            shape: StadiumBorder(),

          ),
          onPressed: (){

            if(selectedanswer==null){
              if(answer.isCorrect){
                score++;
              }
              setState((){
                selectedanswer=answer;
              });
            }
        },

        ),
    );

  }
  nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }


    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 0.5,

      height: 40,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(

          primary: Colors.blueAccent,
          onPrimary: Colors.white,
          shape: StadiumBorder(),

        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(context: context, builder: (_) => showScore());
          }
          else {

            setState(() {
              selectedanswer = null;
              currentQuestionIndex++;
            });

          }
        },
      ),
    );
  }
    
    showScore(){
        return AlertDialog(
            title: Text("Score is: $score"),
          content: ElevatedButton(
            child: Text("Restart"),
            onPressed: (){
              Navigator.pop(context);
              setState(() {
                currentQuestionIndex=0;
                score=0;
                selectedanswer=null;
              });

            },
          ),
        );

  }
}



