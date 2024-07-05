import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils/assets.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      tileColor: AppColors.purple,
      leading: SizedBox(
        width: 21,
        height: 20,
        child: AppIcons.rocket.pngPicture,
      ),
      title: Text(
        '2 общих соблазна',
        style: textTheme.headlineSmall,
      ),
      trailing: AppIcons.close.svgPicture(),
    );
  }
}
