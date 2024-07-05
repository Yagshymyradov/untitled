import 'package:flutter/material.dart';
import 'package:untitled1/components/notification_tile.dart';
import 'package:untitled1/utils/assets.dart';

import '../../theme.dart';
import '../../utils/enums.dart';

class Chat extends StatelessWidget {
  final Chats chats;

  const Chat({super.key, required this.chats});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: AppIcons.chevronLeft.svgPicture(),
        ),
        titleSpacing: 0,
        title: SizedBox(
          width: 30,
          height: 30,
          child: chats.asImage,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: AppIcons.more.svgPicture(),
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          const SliverToBoxAdapter(child: NotificationTile()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverFillRemaining(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
                color: AppColors.dark1,
              ),
              child: SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 51),
                    Text(
                      'Начни общение',
                      style: textTheme.bodySmall?.copyWith(
                        color: AppColors.grey1,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: AppIcons.add.svgPicture(),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Сообщение...',
                              suffixIcon: SizedBox(
                                height: 10,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: AppIcons.incognitoMode.svgPicture(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: AppIcons.microphone.svgPicture(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
