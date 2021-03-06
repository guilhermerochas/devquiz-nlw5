import 'package:devquiz/pages/home/home_state.dart';

import 'home_controller.dart';
import 'package:devquiz/pages/home/widgets/app_bar_widget.dart';
import 'package:devquiz/pages/home/widgets/level_button_widget.dart';
import 'package:devquiz/pages/home/widgets/quiz_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:devquiz/core/core.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizList();
    controller.state.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return controller.state.value == HomeState.success
        ? Scaffold(
            appBar: AppBarWidget(user: controller.user!),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      levelButtonWidget(
                        title: "Facil",
                        backgroundColor: AppColors.levelButtonFacil,
                        textColor: AppColors.levelButtonTextFacil,
                        outlinedColor: AppColors.levelButtonBorderFacil,
                      ),
                      levelButtonWidget(
                        title: "Médio",
                        backgroundColor: AppColors.levelButtonMedio,
                        textColor: AppColors.levelButtonTextMedio,
                        outlinedColor: AppColors.levelButtonBorderMedio,
                      ),
                      levelButtonWidget(
                        title: "Difícil",
                        backgroundColor: AppColors.levelButtonDificil,
                        textColor: AppColors.levelButtonTextDificil,
                        outlinedColor: AppColors.levelButtonBorderDificil,
                      ),
                      levelButtonWidget(
                        title: "Perito",
                        backgroundColor: AppColors.levelButtonPerito,
                        textColor: AppColors.levelButtonTextPerito,
                        outlinedColor: AppColors.levelButtonBorderPerito,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: GridView.count(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    children: controller.quizList!
                        .map(
                          (quiz) => quizCardWidget(quiz: quiz),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          )
        : Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color?>(
                  AppColors.darkGreen,
                ),
              ),
            ),
          );
  }
}
