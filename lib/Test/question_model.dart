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
  list.add(Question("Which one is the largest planet in our Solar System?",[
    Answer("Saturn", false),
    Answer("Neptune", false),
    Answer("Jupiter", true),
    Answer("Earth", false),
  ])
  );
  list.add(Question("Which is the farthest planet from the sun?",[
    Answer("Earth", false),
    Answer("Venus", false),
    Answer("Jupiter", false),
    Answer("Neptune", true),
  ])
  );
  list.add(Question("How many planets are in our Solar System?",[
    Answer("5", false),
    Answer("11", false),
    Answer("8", true),
    Answer("7", false),
  ])
  );
  list.add(Question("How many planets are in our Solar System called Gas Giant?",[
    Answer("8", false),
    Answer("4", true),
    Answer("7", false),
    Answer("9", false),
  ])
  );


  return list;

}