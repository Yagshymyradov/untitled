import 'package:flutter/material.dart';

import '../screens/work_space/search_work_space.dart';
import '../theme.dart';
import 'search.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SliverToBoxAdapter(
      child: InkWell(
        onTap: () => showCustomSearch(context: context, delegate: SearchWorkSpace()),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.darkGrey),
            color: AppColors.darkerGrey,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(Icons.search, color: AppColors.grey),
                const SizedBox(width: 10),
                Text('Поиск', style: textTheme.bodyMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
