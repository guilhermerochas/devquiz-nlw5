import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:devquiz/pages/home/widgets/score_card_widget.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

import '../../../core/app_gradients.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;

  AppBarWidget({
    required this.user,
    Key? key,
  }) : super(
          key: key,
          preferredSize: Size.fromHeight(270),
          child: Container(
            height: 270,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: AppTextStyles.title,
                            children: <InlineSpan>[
                              TextSpan(
                                text: user.name,
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
                              image: NetworkImage(user.photoUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ScoreCardWidget(score: user.score),
                )
              ],
            ),
          ),
        );
}
