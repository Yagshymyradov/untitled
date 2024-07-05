import 'package:flutter/material.dart';
import 'package:untitled1/theme.dart';

import '../utils/assets.dart';
import 'messages/messages.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedPage = 0;
  List<Widget> pages = [
    const Center(child: Text('Screen1')),
    const Messages(),
    const Center(child: Text('Screen3')),
    const Center(child: Text('Screen4')),
  ];

  void onBottomNavBarTap(value) {
    selectedPage = value;
    setState(() {
      //no-op
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onBottomNavBarTap,
        currentIndex: selectedPage,
        items: [
          BottomNavigationBarItem(
            icon: AppIcons.main.svgPicture(),
            label: '',
            activeIcon: AppIcons.main.svgPicture(color: AppColors.yellow),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.chat.svgPicture(color: AppColors.purple),
            label: '',
            activeIcon: AppIcons.chat.svgPicture(),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.heart.svgPicture(),
            label: '',
            activeIcon: AppIcons.heart.svgPicture(color: AppColors.yellow),
          ),
          BottomNavigationBarItem(
            icon: AppIcons.settings.svgPicture(),
            label: '',
            activeIcon: AppIcons.settings.svgPicture(color: AppColors.yellow),
          ),
        ],
      ),
    );
  }
}
