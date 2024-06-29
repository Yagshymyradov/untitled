import 'package:flutter/material.dart';
import 'package:untitled1/theme.dart';

import 'screens/work_space/work_space.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const WorkSpace(),
    );
  }
}
