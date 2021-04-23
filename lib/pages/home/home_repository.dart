import 'dart:convert';

import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = rootBundle.loadString("assets/database/user.json");
    return await response.then<UserModel>((value) => UserModel.fromJson(value));
  }

  Future<List<QuizModel>> getQuizList() async {
    final response =
        await rootBundle.loadString("assets/database/quizzes.json");
    final list = jsonDecode(response) as List;
    return list.map((e) => QuizModel.fromMap(e)).toList();
  }
}
