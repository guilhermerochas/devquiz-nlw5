import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

Widget questionIndicatorWidget() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Questão 04",
              style: AppTextStyles.body15,
            ),
            Text(
              "de 10",
              style: AppTextStyles.body15,
            ),
          ],
        ),
        progressIndicator(value: 0.4)
      ],
    ),
  );
}
