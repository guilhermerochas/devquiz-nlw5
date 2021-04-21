import 'package:devquiz/pages/home/widgets/app_bar_widget.dart';
import 'package:devquiz/pages/home/widgets/level_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:devquiz/core/core.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: <Widget>[
            levelButtonWidget(
              title: "Facil",
              backgroundColor: AppColors.levelButtonFacil,
              textColor: AppColors.levelButtonTextFacil,
              outlinedColor: AppColors.levelButtonBorderFacil,
            ),
            SizedBox(width: 10),
            levelButtonWidget(
              title: "Médio",
              backgroundColor: AppColors.levelButtonMedio,
              textColor: AppColors.levelButtonTextMedio,
              outlinedColor: AppColors.levelButtonBorderMedio,
            ),
            SizedBox(width: 10),
            levelButtonWidget(
              title: "Difícil",
              backgroundColor: AppColors.levelButtonDificil,
              textColor: AppColors.levelButtonTextDificil,
              outlinedColor: AppColors.levelButtonBorderDificil,
            ),
            SizedBox(width: 10),
            levelButtonWidget(
              title: "Perito",
              backgroundColor: AppColors.levelButtonPerito,
              textColor: AppColors.levelButtonTextPerito,
              outlinedColor: AppColors.levelButtonBorderPerito,
            ),
          ],
        ),
      ),
    );
  }
}
