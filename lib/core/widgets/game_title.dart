import 'package:flutter/material.dart';

class GameTitle extends StatelessWidget {
  const GameTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '15',
            style: TextStyle(
              color: Colors.white,
              fontSize: 68,
              fontWeight: FontWeight.w600,
              fontFamily: "Pacifico",
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Puzzle',
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.w600,
              fontFamily: "Pacifico",
            ),
          ),
        ],
      ),
    );
  }
}
