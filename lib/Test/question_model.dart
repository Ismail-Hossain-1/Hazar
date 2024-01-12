class Question{
  late final String questionText;
  late final List<Answer> answerList;

  Question(this.questionText, this.answerList);


}

class Answer{
  late final String asnwerText;
  late final bool isCorrect;

  Answer(this.asnwerText, this.isCorrect);
}

List<Question> getQuestions(){

  List<Question> list=[];

  list.add(Question("Which is closest planet to the Sun",[
        Answer("Earth", false),
        Answer("Mercury", true),
        Answer("Jupiter", false),
        Answer("Saturn", false),
    ])
  );
  list.add(Question("Which is closest planet to the Sun",[
    Answer("Earth", false),
    Answer("Mercury", true),
    Answer("Jupiter", false),
    Answer("Saturn", false),
  ])
  );
  list.add(Question("Which is closest planet to the Sun",[
    Answer("Earth", false),
    Answer("Mercury", true),
    Answer("Jupiter", false),
    Answer("Saturn", false),
  ])
  );
  list.add(Question("Which is closest planet to the Sun",[
    Answer("Earth", false),
    Answer("Mercury", true),
    Answer("Jupiter", false),
    Answer("Saturn", false),
  ])
  );
  list.add(Question("Which is closest planet to the Sun",[
    Answer("Earth", false),
    Answer("Mercury", true),
    Answer("Jupiter", false),
    Answer("Saturn", false),
  ])
  );


  return list;

}