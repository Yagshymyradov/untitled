import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


enum AppIcons {
  premium42('premium42'),
  premiumHit('premium-hit'),
  add('add'),
  close('close'),
  rocket('rocket'),
  chevronLeft('chevron-left'),
  heartFilled('heart-filled'),
  incognitoMode('incognito-mode'),
  incognitoPurple('incognito-purple'),
  incognitoYellow('incognito-yellow'),
  man1('man1'),
  man2('man2'),
  man3('man3'),
  man4('man4'),
  man5('man5'),
  man6('man6'),
  microphone('microphone'),
  more('more'),
  settings('settings'),
  chat('chat'),
  heart('heart'),
  main('main');

  final String path;

  const AppIcons(this.path);

  String get _svg => 'assets/icons/$path.svg';

  String get _png => 'assets/icons/$path.png';

  String get _jpg => 'assets/icons/$path.jpg';

  Widget svgPicture({
    double? height,
    double? width,
    Color? color,
  }) =>
      SvgPicture.asset(
        _svg,
        height: height,
        width: width,
        color: color,
      );

  Widget get pngPicture => Image.asset(_png);

  Widget get jpgPicture => Image.asset(_jpg);
}
