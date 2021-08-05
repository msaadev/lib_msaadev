import 'package:flutter/material.dart';

extension TapExtension on Widget {
  Widget onTap(Function() onTap) => InkWell(
        onTap: onTap,
        child: this,
      );
}
