import 'package:flutter/material.dart';

import '../theme.dart';
import '../utils/assets.dart';

class IncognitoPrice extends StatelessWidget {
  final Widget? discount;
  final String count;
  final String price;

  const IncognitoPrice({
    super.key,
    this.discount,
    required this.count,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 13),
            DecoratedBox(
              decoration: BoxDecoration(
                  color: AppColors.dark1,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.dark)),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(count, style: textTheme.labelSmall),
                        const SizedBox(width: 4),
                        AppIcons.incognitoYellow.svgPicture(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text('$price ₽', style: textTheme.labelSmall),
                  ],
                ),
              ),
            ),
          ],
        ),
        discount != null
            ? Positioned(
                left: 0,
                right: 0,
                child: discount!,
              )
            : const SizedBox(),
      ],
    );
  }
}
