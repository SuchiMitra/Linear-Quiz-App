import 'package:flutter/material.dart';

void main() {
  runApp(LinearQuiz());
}

class LinearQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Linear Quiz App'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: QuizPage(),
        )),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> quesitons = [
    'বাঙ্গালা ভাষার ইতিবৃত্ত’ কে রচনা করেন?',
    'রবীন্দ্রনাথ ঠাকুরের কোন প্রবন্ধটি উপন্যাস?',
    'কাজী নজরুল ইসলামের নামের সাথে জড়িত ‘ধূমকেতু’ কোন ধরনের প্রকাশনা?',
    'জসীমউদ্দীনের প্রথম প্রকাশিত কাব্যগ্রন্থ কোনটি?',
    'রাইফেল রোটি আওরাত’ উপন্যাসের রচয়িতা কে?',
    'কাজী নজরুল ইসলামের উপন্যাস কোনটি?',
    'মা যে জননী কান্দে’ কোন ধরনের রচনা?',
    'শরৎচন্দ্রের কোন উপন্যাসটি সরকার কর্তৃক বাজেয়াপ্ত হয়েছিল?',
    'কোন প্রবন্ধটির রচয়িতা এস, ওয়াজেদ আলী?',
    '“ভাষা মানুষের মুখ থেকে কলমের মুখে আসে, উল্টোটা করতে গেলে মুখে শুধু কালি পড়ে।” বলেছেন-',
    'রঙ্গীন টেলিভিশন হতে ক্ষতিকর কোন রশ্মি বের হয়?',
    'মাইট্রোকল্ড্রিয়ায় কত ভাগ প্রোটিন?',
    'মূল নেই কোন উদ্ভিদের?',
    'ল্যাপটপ কী?',
    'এসবেসটস কী?',
  ];
  int questionNumber = 0;
  List<bool> answers = [true, false, true, false, true, true, false, true, false, true, true, false, true, false, true,];
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  quesitons[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: FlatButton(
                  minWidth: 350,
                  height: 80,
                  color: Colors.green,
                  child: Text(
                    'সত্য',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    bool correctAnswer = answers[questionNumber];
                    if (correctAnswer == true) {
                      print('you got the anser right');
                    } else {
                      print('You got the answerr wrong');
                    }

                    setState(() {
                      questionNumber++;
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: FlatButton(
                    minWidth: 350,
                    height: 80,
                    color: Colors.red,
                    child: Text(
                      'মিথ্যা',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      bool correctAnswer = answers[questionNumber];
                      if (correctAnswer == true) {
                        print('you got the anser right');
                      } else {
                        print('You got the answerr wrong');
                      }
                      setState(() {
                        questionNumber++;
                      });
                    }),
              ),
            ),
          ),
          Row(children: scoreKeeper),
        ]);
  }
}