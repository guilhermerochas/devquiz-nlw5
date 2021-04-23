import 'package:devquiz/pages/home/home_repository.dart';
import 'package:devquiz/pages/home/home_state.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  ValueNotifier<HomeState> state = ValueNotifier(HomeState.empty);
  UserModel? user;
  List<QuizModel>? quizList;
  final HomeRepository repository = HomeRepository();

  void getUser() async {
    state.value = HomeState.loading;
    this.user = await repository.getUser();
    state.value = HomeState.success;
  }

  void getQuizList() async {
    state.value = HomeState.loading;
    this.quizList = await repository.getQuizList();
    state.value = HomeState.success;
  }
}
