import 'package:devquiz/pages/challenge/widgets/question_indicator_widget.dart';
import 'package:devquiz/pages/challenge/widgets/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: SafeArea(
          top: true,
          child: questionIndicatorWidget(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: quizWidget(title: "O que Flutter faz em sua totalidade?"),
      ),
    );
  }
}
