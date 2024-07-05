import 'package:flutter/material.dart';
import 'package:untitled1/components/incognito_price.dart';

import '../../../utils/assets.dart';

class BuyIncognito extends StatelessWidget {
  const BuyIncognito({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 35),
              AppIcons.incognitoPurple.svgPicture(),
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: AppIcons.close.svgPicture(),
              )
            ],
          ),
          const SizedBox(height: 22),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'РЕЖИМ ',
                  style: textTheme.headlineMedium,
                ),
                TextSpan(
                  text: 'ИНКОГНИТО ',
                  style: textTheme.headlineMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                TextSpan(
                  text: 'НА 24 ЧАСА',
                  style: textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным',
            style: textTheme.titleSmall?.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const IncognitoPrice(count: '1', price: '99'),
              IncognitoPrice(
                count: '3',
                price: '199',
                discount: AppIcons.premiumHit.svgPicture(),
              ),
              IncognitoPrice(
                count: '7',
                price: '399',
                discount: AppIcons.premium42.svgPicture(),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Купить',
              style: textTheme.labelSmall,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'условия и положения',
            style: textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
