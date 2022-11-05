import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum LetterStatus { initial, notinword, inword, correct }

const Color correctColor = Color(0xFF538D4E);
const Color inwordColor = Color(0xFFB49F3A);
const Color notinwordColor = Color(0xFF3A3A3C);

class Letter extends Equatable {
  const Letter({
    required this.val,
    this.status = LetterStatus.initial,
  });
  factory Letter.empty() => const Letter(val: '');
  final String val;
  final LetterStatus status;

  Color get backgroundColor {
    switch (status) {
      case LetterStatus.initial:
        return const Color.fromARGB(248, 113, 109, 109);
      case LetterStatus.notinword:
        return notinwordColor;
      case LetterStatus.inword:
        return inwordColor;
      case LetterStatus.correct:
        return correctColor;
    }
  }

  Color get borderColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.grey;
      default:
        return const Color.fromARGB(0, 150, 38, 38);
    }
  }

  Letter copyWith({
    val,
    status,
  }) {
    return Letter(
      val: this.val,
      status: this.status,
    );
  }

  @override
  List<Object?> get props => [val, status];
}
