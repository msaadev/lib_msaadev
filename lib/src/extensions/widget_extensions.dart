import 'package:flutter/material.dart';

extension TapExtension on Widget {
  Widget onTap(Function()? onTap,{Color? splashColor }) => InkWell(
    splashColor: splashColor ?? Colors.transparent,
        onTap: onTap,
        child: this,
      );
}
