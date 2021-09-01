import 'package:flutter/material.dart';

extension TapExtension on Widget {
  Widget onTap(Function()? onTap,{Color SplashColor = Colors.transparent}) => InkWell(
    splashColor: SplashColor,
        onTap: onTap,
        child: this,
      );
}
