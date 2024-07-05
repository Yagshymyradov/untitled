import 'package:flutter/material.dart';
import 'package:untitled1/utils/assets.dart';

enum Chats {
  man1,
  man2,
  man3,
  man4,
  man5,
  man6;

  String get asDateTime {
    switch (this) {
      case Chats.man1:
        return '23 ч 43 мин';
      case Chats.man2:
        return '20 ч 40 мин';
      case Chats.man3:
        return '18 ч 40 мин';
      case Chats.man4:
        return '09 ч 40 мин';
      case Chats.man5:
        return '03 ч 04 мин';
      case Chats.man6:
        return '01 ч 09 мин';
    }
  }

  String get asMessage {
    switch (this) {
      case Chats.man1:
        return 'Отлично выглядишь';
      case Chats.man2:
        return 'Встретимся? Я рядом';
      case Chats.man3:
        return 'Встретимся?';
      case Chats.man4:
        return 'Давно тебя хочу';
      case Chats.man5:
        return 'Я в ванной.. Скинь фото...';
      case Chats.man6:
        return 'Привет';
    }
  }

  Widget get asImage {
    switch (this) {
      case Chats.man1:
        return AppIcons.man1.pngPicture;
      case Chats.man2:
        return AppIcons.man2.pngPicture;
      case Chats.man3:
        return AppIcons.man3.pngPicture;
      case Chats.man4:
        return AppIcons.man4.pngPicture;
      case Chats.man5:
        return AppIcons.man5.pngPicture;
      case Chats.man6:
        return AppIcons.man6.pngPicture;
    }
  }
}
