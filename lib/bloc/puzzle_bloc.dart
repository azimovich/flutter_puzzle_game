import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle_event.dart';
part 'puzzle_state.dart';
part 'puzzle_bloc.freezed.dart';

class PuzzleBloc extends Bloc<PuzzleEvent, PuzzleState> {
  PuzzleBloc() : super(_Initial()) {
    on<PuzzleEvent>((event, emit) async {
      if (event is _newGame) {
        await _onNewGame(event, emit);
      } else if (event is _onTap) {
        await _onButtonTap(event, emit);
      }
    });
  }

  Future<void> _onNewGame(_newGame event, Emitter<PuzzleState> emit) async {
    while (true) {
      final list = List.generate(16, (i) => i)..shuffle();
      if (_isSolvable(list)) {
        emit(state.copyWith(numbers: list, moves: 0, time: 0, isFinished: false));
        break;
      }
    }
  }

  Future<void> _onButtonTap(_onTap event, Emitter<PuzzleState> emit) async {
    event.index;
    final list = <int>[];
    list.addAll(state.numbers);

    final indexZero = list.indexOf(0);
    final clZero = indexZero % 4;
    final clItem = event.index % 4;
    final rwZero = indexZero ~/ 4;
    final rwItem = event.index ~/ 4;

    bool condition = (clZero == clItem && (rwItem - rwZero).abs() == 1) ||
        (rwZero == rwItem && (clItem - clZero).abs() == 1);

    if (condition) {
      list[indexZero] = list[event.index];
      list[event.index] = 0;
      if (_isSorted(list)) {
        emit(state.copyWith(isFinished: true));
      }
      emit(state.copyWith(
        numbers: list,
        moves: state.moves + 1,
      ));
    }
  }
}


bool _isSolvable(List<int> puzzle) {
  int n = 4; // Since it's a 15-puzzle, the grid is 4x4
  int inversions = 0;

  // Count inversions
  for (int i = 0; i < puzzle.length; i++) {
    for (int j = i + 1; j < puzzle.length; j++) {
      if (puzzle[i] != 0 && puzzle[j] != 0 && puzzle[i] > puzzle[j]) {
        inversions++;
      }
    }
  }

  // Find the row position of the blank space (0)
  int blankRow = 0;
  for (int i = 0; i < puzzle.length; i++) {
    if (puzzle[i] == 0) {
      blankRow = n - (i ~/ n); // Calculate the row from the bottom
      break;
    }
  }

  // Check solvability
  if (n % 2 != 0) {
    // If grid width is odd
    return inversions % 2 == 0;
  } else {
    // If grid width is even
    if (blankRow % 2 == 0) {
      return inversions % 2 != 0;
    } else {
      return inversions % 2 == 0;
    }
  }
}

bool _isSorted(List<int> numbers) {
  int first = numbers.first;
  for (var i = 0; i < numbers.length - 1; i++) {
    int nextNumber = numbers[i];
    if (first > nextNumber) {
      return false;
    }
    // first = numbers[i];
    first = nextNumber;
  }
  return true;
}


