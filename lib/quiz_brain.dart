import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('ভারতের প্রথম ওডিআই (ক্রিকেট) অনুষ্ঠিত হয় আহমেদাবাদে।', true),
    Question('গোয়া নারকেল উৎপাদন না করার জন্য বিখ্যাত।', true),
    Question('পোলোর উৎপত্তি আসামে।', false),
    Question('খালসা 1699 সালে জন্মগ্রহণ করেন।', true),
    Question('লতা মঙ্গেশকর 1960 সালে পদ্মভূষণ জিতেছিলেন।', false),
    Question('শেক্সপিয়ার 37টি নাটক লিখেছেন।', true),
    Question('প্রথম ওডিআই ভারতীয় দলের প্রথম অধিনায়ক ছিলেন সুনীল গাভাস্কার।',
        false),
    Question('বেসবলের উৎপত্তি অস্ট্রেলিয়ায়।', false),
    Question('আইস হকিতে ফাউল বোঝাতে লাল এবং সবুজ বাতি ব্যবহার করা হয়।', false),
    Question('উটপাখির চোখ তার মস্তিষ্কের চেয়ে ছোট।', false),
    Question('উদ্ভিদ বায়ুমণ্ডল থেকে অক্সিজেন পর্যবেক্ষণ করে।', false),
    Question(
        'ভারতের অপেশাদার অ্যাথলেটিক্স ফেডারেশন 1946 সালে প্রতিষ্ঠিত হয়েছিল।',
        true),
    Question('রামায়ণ রচনা করেছিলেন তুলসীদাস।', false),
    Question('নক্ষত্র সংখ্যায় ২৭টি।', true),
    Question('পশ্চিমবঙ্গের সুন্দরবন হাতির জন্য বিখ্যাত।', false),
    Question('বৈদিক জ্যোতিষশাস্ত্র সৌরজগতের উপর নির্ভর করে।', false),
    Question('সাবির ভাটিয়া হটমেইলের সহ-প্রতিষ্ঠাতা ছিলেন।', true),
    Question('কাশ্মীরের উলার হ্রদ ভারতের বৃহত্তম মিঠা পানির হ্রদ।', true),
    Question('কাশ্মীরের উলার হ্রদ ভারতের বৃহত্তম মিঠা পানির হ্রদ।', true),
    Question('শব্দ তরঙ্গ আলোর চেয়ে দ্রুত ভ্রমণ করে।', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}