import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

Widget progressIndicator({required double value}) => LinearProgressIndicator(
      value: value,
      backgroundColor: AppColors.chartSecondary,
      valueColor: AlwaysStoppedAnimation<Color?>(
        AppColors.chartPrimary,
      ),
    );
