part of 'puzzle_bloc.dart';

@freezed
class PuzzleState with _$PuzzleState {
  const factory PuzzleState.initial({
    @Default([]) List<int> numbers,
    @Default(0) int moves,
    @Default(0) int time,
    @Default(false) bool isFinished,
  }) = _Initial;
}
