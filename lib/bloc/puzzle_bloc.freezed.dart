// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'puzzle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PuzzleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newGame,
    required TResult Function(int index) onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newGame,
    TResult? Function(int index)? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newGame,
    TResult Function(int index)? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_newGame value) newGame,
    required TResult Function(_onTap value) onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_newGame value)? newGame,
    TResult? Function(_onTap value)? onTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_newGame value)? newGame,
    TResult Function(_onTap value)? onTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleEventCopyWith<$Res> {
  factory $PuzzleEventCopyWith(
          PuzzleEvent value, $Res Function(PuzzleEvent) then) =
      _$PuzzleEventCopyWithImpl<$Res, PuzzleEvent>;
}

/// @nodoc
class _$PuzzleEventCopyWithImpl<$Res, $Val extends PuzzleEvent>
    implements $PuzzleEventCopyWith<$Res> {
  _$PuzzleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$newGameImplCopyWith<$Res> {
  factory _$$newGameImplCopyWith(
          _$newGameImpl value, $Res Function(_$newGameImpl) then) =
      __$$newGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$newGameImplCopyWithImpl<$Res>
    extends _$PuzzleEventCopyWithImpl<$Res, _$newGameImpl>
    implements _$$newGameImplCopyWith<$Res> {
  __$$newGameImplCopyWithImpl(
      _$newGameImpl _value, $Res Function(_$newGameImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$newGameImpl implements _newGame {
  const _$newGameImpl();

  @override
  String toString() {
    return 'PuzzleEvent.newGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$newGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newGame,
    required TResult Function(int index) onTap,
  }) {
    return newGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newGame,
    TResult? Function(int index)? onTap,
  }) {
    return newGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newGame,
    TResult Function(int index)? onTap,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_newGame value) newGame,
    required TResult Function(_onTap value) onTap,
  }) {
    return newGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_newGame value)? newGame,
    TResult? Function(_onTap value)? onTap,
  }) {
    return newGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_newGame value)? newGame,
    TResult Function(_onTap value)? onTap,
    required TResult orElse(),
  }) {
    if (newGame != null) {
      return newGame(this);
    }
    return orElse();
  }
}

abstract class _newGame implements PuzzleEvent {
  const factory _newGame() = _$newGameImpl;
}

/// @nodoc
abstract class _$$onTapImplCopyWith<$Res> {
  factory _$$onTapImplCopyWith(
          _$onTapImpl value, $Res Function(_$onTapImpl) then) =
      __$$onTapImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$onTapImplCopyWithImpl<$Res>
    extends _$PuzzleEventCopyWithImpl<$Res, _$onTapImpl>
    implements _$$onTapImplCopyWith<$Res> {
  __$$onTapImplCopyWithImpl(
      _$onTapImpl _value, $Res Function(_$onTapImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$onTapImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$onTapImpl implements _onTap {
  const _$onTapImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'PuzzleEvent.onTap(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onTapImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onTapImplCopyWith<_$onTapImpl> get copyWith =>
      __$$onTapImplCopyWithImpl<_$onTapImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newGame,
    required TResult Function(int index) onTap,
  }) {
    return onTap(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newGame,
    TResult? Function(int index)? onTap,
  }) {
    return onTap?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newGame,
    TResult Function(int index)? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_newGame value) newGame,
    required TResult Function(_onTap value) onTap,
  }) {
    return onTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_newGame value)? newGame,
    TResult? Function(_onTap value)? onTap,
  }) {
    return onTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_newGame value)? newGame,
    TResult Function(_onTap value)? onTap,
    required TResult orElse(),
  }) {
    if (onTap != null) {
      return onTap(this);
    }
    return orElse();
  }
}

abstract class _onTap implements PuzzleEvent {
  const factory _onTap(final int index) = _$onTapImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$onTapImplCopyWith<_$onTapImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PuzzleState {
  List<int> get numbers => throw _privateConstructorUsedError;
  int get moves => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<int> numbers, int moves, int time, bool isFinished)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> numbers, int moves, int time, bool isFinished)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> numbers, int moves, int time, bool isFinished)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PuzzleStateCopyWith<PuzzleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleStateCopyWith<$Res> {
  factory $PuzzleStateCopyWith(
          PuzzleState value, $Res Function(PuzzleState) then) =
      _$PuzzleStateCopyWithImpl<$Res, PuzzleState>;
  @useResult
  $Res call({List<int> numbers, int moves, int time, bool isFinished});
}

/// @nodoc
class _$PuzzleStateCopyWithImpl<$Res, $Val extends PuzzleState>
    implements $PuzzleStateCopyWith<$Res> {
  _$PuzzleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
    Object? moves = null,
    Object? time = null,
    Object? isFinished = null,
  }) {
    return _then(_value.copyWith(
      numbers: null == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PuzzleStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> numbers, int moves, int time, bool isFinished});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PuzzleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
    Object? moves = null,
    Object? time = null,
    Object? isFinished = null,
  }) {
    return _then(_$InitialImpl(
      numbers: null == numbers
          ? _value._numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<int>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as int,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {final List<int> numbers = const [],
      this.moves = 0,
      this.time = 0,
      this.isFinished = false})
      : _numbers = numbers;

  final List<int> _numbers;
  @override
  @JsonKey()
  List<int> get numbers {
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbers);
  }

  @override
  @JsonKey()
  final int moves;
  @override
  @JsonKey()
  final int time;
  @override
  @JsonKey()
  final bool isFinished;

  @override
  String toString() {
    return 'PuzzleState.initial(numbers: $numbers, moves: $moves, time: $time, isFinished: $isFinished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._numbers, _numbers) &&
            (identical(other.moves, moves) || other.moves == moves) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isFinished, isFinished) ||
                other.isFinished == isFinished));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_numbers), moves, time, isFinished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<int> numbers, int moves, int time, bool isFinished)
        initial,
  }) {
    return initial(numbers, moves, time, isFinished);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<int> numbers, int moves, int time, bool isFinished)?
        initial,
  }) {
    return initial?.call(numbers, moves, time, isFinished);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<int> numbers, int moves, int time, bool isFinished)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(numbers, moves, time, isFinished);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PuzzleState {
  const factory _Initial(
      {final List<int> numbers,
      final int moves,
      final int time,
      final bool isFinished}) = _$InitialImpl;

  @override
  List<int> get numbers;
  @override
  int get moves;
  @override
  int get time;
  @override
  bool get isFinished;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
