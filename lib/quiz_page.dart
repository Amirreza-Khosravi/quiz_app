import 'package:flutter/material.dart';
import 'package:quiz_application/Constant/constant.dart';
import 'package:quiz_application/data/question.dart';
import 'package:quiz_application/result_page.dart';

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int shownQuestionIndex = 0;
  Question? selectedQuestion;
  bool isFinalAnswerSubmited = false;
  int correctAnswer = 0;
  @override
  Widget build(BuildContext context) {
    selectedQuestion = getQuestionList()![shownQuestionIndex];
    String? questionImageIndex;
    questionImageIndex = selectedQuestion!.imageNameNumber!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' سوال ${shownQuestionIndex + 1} از ${getQuestionList()!.length}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 6, 11, 49),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
            ),
            Image(
              image: AssetImage('images/$questionImageIndex.png'),
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              selectedQuestion!.questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ...List.generate(
              4,
              (index) => getOptionItem(index),
            ),
            if (isFinalAnswerSubmited)
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                correctAnswer: correctAnswer,
                              )));
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 182, 3, 3),
                    minimumSize: Size(200.0, 45.0)),
                child: Text(
                  'مشاهده نتیجه',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget getOptionItem(int index) {
    return ListTile(
      title: Text(
        selectedQuestion!.answerList![index],
        textAlign: TextAlign.end,
      ),
      onTap: () {
        if (selectedQuestion!.correctAnswer == index) {
          correctAnswer++;
        } else {
          print('Wrong');
        }
        if (shownQuestionIndex == getQuestionList()!.length - 1) {
          isFinalAnswerSubmited = true;
        }
        setState(() {
          if (shownQuestionIndex < getQuestionList()!.length - 1) {
            shownQuestionIndex++;
          }
        });
      },
    );
  }
}
