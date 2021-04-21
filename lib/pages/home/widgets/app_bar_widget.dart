import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/pages/home/widgets/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget({
    Key? key,
  }) : super(
          key: key,
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: AppGradients.linear,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                          text: "Olá, ",
                          style: AppTextStyles.title,
                          children: <InlineSpan>[
                            TextSpan(
                              text: "Guilherme",
                              style: AppTextStyles.titleBold,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://github.com/guilhermerochas.png",
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  ScoreCardWidget()
                ],
              ),
            ),
          ),
        );
}
