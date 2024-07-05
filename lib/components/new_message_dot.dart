import 'package:flutter/material.dart';

import '../theme.dart';

class NewMessageDot extends StatelessWidget {
  const NewMessageDot({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 4,
      height: 4,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.light,
        ),
      ),
    );
  }
}
