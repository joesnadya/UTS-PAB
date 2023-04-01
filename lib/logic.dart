import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  final Color _textColor = const Color(0xFF24D876);
  String result() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'OBESITAS';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'TERLALU RENDAH';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'Anda memiliki berat badan lebih dari normal.\n Cobalah untuk melakukan lebih banyak olahraga';
    } else if (_bmi > 18.5) {
      return 'Berat badan Anda normal.\nKerja bagus!';
    } else {
      return 'Berat badan Anda lebih rendah dari normal.\n Cobalah makan lebih banyak';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return const Color(0xFF24D876);
    }
  }
}