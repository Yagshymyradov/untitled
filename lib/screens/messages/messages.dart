import 'package:flutter/material.dart';
import 'package:untitled1/components/new_message_dot.dart';
import 'package:untitled1/screens/chat/chat.dart';
import 'package:untitled1/screens/messages/widgets/buy_incognito.dart';
import 'package:untitled1/theme.dart';
import 'package:untitled1/utils/assets.dart';
import 'package:untitled1/utils/extensions.dart';
import 'package:untitled1/utils/navigation.dart';

import '../../utils/enums.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  void onIncognitoTap(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.darkBlue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      builder: (context) => const BuyIncognito(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                const Spacer(),
                DecoratedBox(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(8),
                    ),
                    color: AppColors.dark1,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text('ЧАТЫ', style: textTheme.titleMedium),
                            ),
                            Text('OFF', style: textTheme.labelSmall),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () => onIncognitoTap(context),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.grey2,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                                  child: AppIcons.incognitoYellow.svgPicture(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        IntrinsicHeight(
                          child: OverflowBox(
                            maxWidth: MediaQuery.sizeOf(context).width,
                            child: ListTile(
                              leading: DecoratedBox(
                                decoration: const BoxDecoration(
                                  color: AppColors.darkPurple,
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(18),
                                  child: AppIcons.heartFilled.svgPicture(),
                                ),
                              ),
                              title: Text('44 человека тебя лайкнули', style: textTheme.bodyMedium),
                              trailing: const NewMessageDot(),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ...Chats.values.mapIndexed(
                          (e, i) => IntrinsicHeight(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: OverflowBox(
                                maxWidth: MediaQuery.sizeOf(context).width,
                                child: ListTile(
                                  onTap: () => navigateToScreen(
                                      context,
                                      Chat(
                                        chats: e,
                                      )),
                                  leading: e.asImage,
                                  title: Text(e.asDateTime, style: textTheme.bodySmall),
                                  subtitle: Text(
                                    e.asMessage,
                                    style: textTheme.bodySmall?.copyWith(fontSize: 14),
                                  ),
                                  trailing: i == 1 ? const NewMessageDot() : null,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
