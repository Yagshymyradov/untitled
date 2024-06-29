import 'package:flutter/material.dart';
import 'package:untitled1/theme.dart';

enum WorkSpaces {
  savva,
  olluco,
  loona,
  folk,
  whiteRabbit,
  sage,
  maya,
  jun,
  onest,
  probka;

  String get asValue {
    switch (this) {
      case WorkSpaces.savva:
        return 'Savva';
      case WorkSpaces.olluco:
        return 'Olluco';
      case WorkSpaces.loona:
        return 'Loona';
      case WorkSpaces.folk:
        return 'Folk';
      case WorkSpaces.whiteRabbit:
        return 'White Rabbit';
      case WorkSpaces.sage:
        return 'Saga';
      case WorkSpaces.maya:
        return 'Maya';
      case WorkSpaces.jun:
        return 'Jun';
      case WorkSpaces.onest:
        return 'Onest';
      case WorkSpaces.probka:
        return 'Probka на Цветном';
    }
  }

  Color get asColor {
    switch (this) {
      case WorkSpaces.savva:
        return AppColors.savva;
      case WorkSpaces.olluco:
        return AppColors.olluco;
      case WorkSpaces.loona:
        return AppColors.loona;
      case WorkSpaces.folk:
        return AppColors.folk;
      case WorkSpaces.whiteRabbit:
        return AppColors.whiteRabbit;
      case WorkSpaces.sage:
        return AppColors.sage;
      case WorkSpaces.maya:
        return AppColors.maya;
      case WorkSpaces.jun:
        return AppColors.jun;
      case WorkSpaces.onest:
        return AppColors.onest;
      case WorkSpaces.probka:
        return AppColors.probka;
    }
  }
}
