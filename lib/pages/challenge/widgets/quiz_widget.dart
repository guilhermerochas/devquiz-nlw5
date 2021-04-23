import 'package:devquiz/core/core.dart';
import 'package:devquiz/pages/challenge/widgets/answer_widget.dart';
import 'package:flutter/material.dart';

Widget quizWidget({required String title}) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
            isSelected: true,
            isRight: true,
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
          AnswerWidget(
            title:
                "Possibilita a criação de aplicativos compilados nativamente.",
          ),
        ],
      ),
    );
