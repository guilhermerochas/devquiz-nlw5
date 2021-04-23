import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:devquiz/core/core.dart';

import '../../../core/app_text_styles.dart';

Widget quizCardWidget({required QuizModel quiz}) => Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.border,
          ),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            child: Image.asset(AppImages.fromString(quiz.imageUrl)),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            quiz.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Text(
                  "${quiz.questionAnswered} de ${quiz.questions.length}",
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                flex: 5,
                child: progressIndicator(
                    value: quiz.questionAnswered / quiz.questions.length),
              ),
            ],
          )
        ],
      ),
    );
