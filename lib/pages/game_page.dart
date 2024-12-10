// import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_puzzle_game/bloc/puzzle_bloc.dart';
import 'package:flutter_puzzle_game/core/style/colors.dart';
import 'package:flutter_puzzle_game/core/widgets/game_title.dart';
import 'package:flutter_puzzle_game/core/widgets/game_top_left_widget.dart';
import 'package:flutter_puzzle_game/core/widgets/game_top_right.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final bloc = PuzzleBloc()..add(const PuzzleEvent.newGame());

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocListener<PuzzleBloc, PuzzleState>(
        listener: (context, state) {
          if (state.isFinished) {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Center(
                    child: Text(
                      'Excellent!',
                      style: TextStyle(
                        color: Color(0xff57407c),
                        fontFamily: "Pacifico",
                      ),
                    ),
                  ),
                  content: Text(
                    textAlign: TextAlign.center,
                    'It look your ${state.moves} moves',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                    ),
                  ),
                  actions: [
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        bloc.add(const PuzzleEvent.newGame());
                      },
                      color: const Color(0xff3D2963),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'new game',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          }
        },
        child: BlocBuilder<PuzzleBloc, PuzzleState>(
          builder: (context, state) {
            return Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GameTitle(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GameTopLeftWidget(onTap: () => bloc.add(const PuzzleEvent.newGame())),
                        GameTopRightWidget(
                          timer: state.time,
                          moves: state.moves,
                          // color: buttonBgColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Center(
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemCount: state.numbers.length,
                          itemBuilder: (_, i) {
                            return state.numbers[i] != 0
                                ? MaterialButton(
                                    onPressed: () {
                                      // func(i);
                                      bloc.add(PuzzleEvent.onTap(i));
                                    },
                                    color: buttonColor(
                                      number: i,
                                      currentNum: state.numbers[i],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.all(0),
                                    child: Text(
                                      '${state.numbers[i]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 60,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Pacifico",
                                        shadows: [
                                          Shadow(
                                            color: textShadow(
                                              number: i,
                                              currentNum: state.numbers[i],
                                            ), // Choose the color of the shadow
                                            blurRadius: 3.0, // Adjust the blur radius for the shadow effect
                                            offset: const Offset(3.0, 3.0), // Set the horizontal and vertical offset for the shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : const Card(
                                    color: AppColors.c3D2963,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(8),
                                      ),
                                    ),
                                  );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Color buttonColor({
  required int number,
  required int currentNum,
}) {
  if (number + 1 == currentNum) {
    return AppColors.cE88A45;
  } else {
    return AppColors.c6AC6B8;
  }
}

Color textShadow({
  required int number,
  required int currentNum,
}) {
  if (number + 1 == currentNum) {
    return const Color.fromARGB(255, 175, 76, 5);
  } else {
    return const Color.fromARGB(255, 7, 139, 120);
  }
}
