import '../data/question.dart';

List<Question>? getQuestionList() {
  var firstQuestion = Question();
  firstQuestion.questionTitle = 'وسیع ترین قاره جهان کدام است؟';
  firstQuestion.imageNameNumber = '9';
  firstQuestion.correctAnswer = 0;
  firstQuestion.answerList = ['آسیا', 'اروپا', 'آمریکا', 'آفریقا'];

  var secondQuestion = Question();
  secondQuestion.questionTitle = 'چه کشوری ایستگاه فضایی میر را بنا کرد؟';
  secondQuestion.imageNameNumber = '8';
  secondQuestion.correctAnswer = 0;
  secondQuestion.answerList = ['(شوروی سابق)روسیه', 'آمریکا', 'چین', 'هند'];

  var thirdQuestion = Question();
  thirdQuestion.questionTitle = 'مشهور ترین شعبده‌باز جهان کیست؟';
  thirdQuestion.imageNameNumber = '1';
  thirdQuestion.correctAnswer = 2;
  thirdQuestion.answerList = [
    'لو چن',
    'دیوید کاپرفیلد',
    'هری هودینی',
    'دیوید بلین'
  ];

  var fourthQuestion = Question();
  fourthQuestion.questionTitle = 'تابلوی لبخند ژکوند اثر کیست؟';
  fourthQuestion.imageNameNumber = '3';
  fourthQuestion.correctAnswer = 3;
  fourthQuestion.answerList = ['ونگوک', 'پیکاسو', 'رامبراند', 'داوینچی'];

  return [firstQuestion, secondQuestion, thirdQuestion, fourthQuestion];
}
