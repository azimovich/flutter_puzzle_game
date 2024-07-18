part of 'puzzle_bloc.dart';

@freezed
class PuzzleEvent with _$PuzzleEvent {
  const factory PuzzleEvent.newGame() = _newGame;
  const factory PuzzleEvent.onTap(int index) = _onTap;
}