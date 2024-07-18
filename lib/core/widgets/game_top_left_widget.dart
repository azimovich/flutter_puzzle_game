import 'package:flutter/material.dart';
import 'package:flutter_puzzle_game/core/style/colors.dart';

class GameTopLeftWidget extends StatelessWidget {
  final VoidCallback onTap;
  const GameTopLeftWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.3,
      height: 60,
      onPressed: onTap,
      color: AppColors.c3D2963,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        'new game',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white70,
          fontSize: 24,
        ),
      ),
    );
  }
}