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
  // Timer _timer = Timer.periodic(Duration.zero, (Timer t) {});

  // void startTimer() {
  //   const oneSec = Duration(seconds: 1);
  //   _timer = Timer.periodic(
  //     oneSec,
  //     (Timer timer) {
  //       setState(() {
  //         ;
  //       });
  //     },
  //   );
  // }

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
                        bloc.add(const PuzzleEvent.newGame());
                        Navigator.pop(context);
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
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const GameTitle(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GameTopLeftWidget(
                            onTap: () => bloc.add(const PuzzleEvent.newGame())),
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
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
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
                                    child: Text(
                                      '${state.numbers[i]}',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600,
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
