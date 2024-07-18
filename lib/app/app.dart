import 'package:flutter/material.dart';
import 'package:flutter_puzzle_game/core/style/colors.dart';
import 'package:flutter_puzzle_game/pages/game_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.c57407c),
      home: const GamePage(),
    );
  }
}
