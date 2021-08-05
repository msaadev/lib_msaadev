import 'package:flutter/material.dart';

extension FutureExtension on Future {
  Widget build({
    required Widget Function(dynamic data) child,
    Widget? errorWidget,
    Widget? loadingWidget
  }) {
    return FutureBuilder(
      future: this,
      builder: (c, s) {
        if (s.hasData) {
          return child(s.data);
        } else if (s.hasError) {
          return errorWidget ?? Center(
            child: Text('Hata Lütfen Tekrar Deneyiniz'),
          );
        } else {
          return loadingWidget ?? Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
