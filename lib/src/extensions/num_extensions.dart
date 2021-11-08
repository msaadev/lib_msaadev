import 'dart:math';

import 'package:flutter/material.dart';

extension CustomPaddingAll on num {
  
  EdgeInsets get paddingAll5 => const EdgeInsets.all(5);
  EdgeInsets get paddingAll10 => const EdgeInsets.all(10);
  EdgeInsets get paddingVertical5 => const EdgeInsets.symmetric(vertical:5);
  EdgeInsets get paddingVertical10 => const EdgeInsets.symmetric(vertical:10);
  EdgeInsets get paddingHorizontal5 => const EdgeInsets.symmetric(horizontal:5);
  EdgeInsets get paddingHorizontal10 => const EdgeInsets.symmetric(horizontal:10);
  EdgeInsets get paddingSymmetric10to5 => const EdgeInsets.symmetric(horizontal:10,vertical: 10);
  EdgeInsets get paddingAll => EdgeInsets.all(toDouble());
  EdgeInsets get paddingSymmetricVertical =>
      EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get paddingSymmetricHorizontal =>
      EdgeInsets.symmetric(horizontal: toDouble());
  EdgeInsets get paddingTop => EdgeInsets.only(top: toDouble());
  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get paddingLeft => EdgeInsets.only(left: toDouble());
  EdgeInsets get paddingRight => EdgeInsets.only(right: toDouble());
}

extension RandomExtension on int {
  int get random => Random().nextInt(this);
}

extension CustomDuration on num {
  Duration get secondDuration => Duration(seconds: this as int);
  Duration get millisecondsDuration => Duration(milliseconds: this as int);
  Duration get microsecondsDuration => Duration(microseconds: this as int);
  Duration get minutesDuration => Duration(minutes: this as int);
  Duration get hoursDuration => Duration(hours: this as int);
  Duration get secondDuration1 => const Duration(seconds: 1);
  Duration get secondDuration2 => const Duration(seconds: 2);
  Duration get millisecondDuration500 => const Duration(milliseconds: 500);
}

extension DurationExtension on BuildContext {
  Duration get millisecond500 => const Duration(milliseconds: 500);
  Duration get millisecond200 => const Duration(milliseconds: 200);
  Duration get millisecond250 => const Duration(milliseconds: 250);
  Duration get millisecond300 => const Duration(milliseconds: 300);
  Duration get second1 => const Duration(seconds: 1);
  Duration get second2 => const Duration(seconds: 2);
}

extension ListExtension on List {
  EdgeInsets get paddingSymmetric => EdgeInsets.symmetric(
      vertical: this[0].toDouble() ?? 0.0, horizontal: this[1].toDouble() ?? 0.0);
//picsum.photos/${this[0] ?? 480}/${this[1] ?? 270}';
  // EdgeInsets.symmetric(vertical: this[0].toDouble() ?? 0,horizontal: this[1].toDouble() ?? 0);
}

extension CustomSizedBox on num {
  Widget get hSized => SizedBox(
        height: toDouble(),
      );
  Widget get wSized => SizedBox(
        width: toDouble(),
      );
  Widget get myBox => SizedBox(
        width: toDouble(),
        height: toDouble(),
      );
}

extension NumberImage on num {
  String get squareImage => 'https://picsum.photos/${toInt()}';
}

extension CustomBorderRadius on num {
  BorderRadius get radius5 => BorderRadius.circular(5);
  BorderRadius get radius7 => BorderRadius.circular(7);
  BorderRadius get radius10 => BorderRadius.circular(10);
  BorderRadius get radius20 => BorderRadius.circular(20);
  BorderRadius get radius30 => BorderRadius.circular(30);
  BorderRadius get radius40 => BorderRadius.circular(40);
  BorderRadius get radius50 => BorderRadius.circular(40);
  BorderRadius get customRadius => BorderRadius.circular(toDouble());
}
