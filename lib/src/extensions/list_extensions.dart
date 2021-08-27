
import 'package:flutter/material.dart';

extension ListExtensions on List {
  Widget build({
    required Widget Function(dynamic data) child,
    bool shrink = false,
    ScrollPhysics? physics

  }) {
    return ListView.builder(
      itemCount:  this.length,
      shrinkWrap: shrink,
      physics: physics,
      itemBuilder: (context, index) {
      var item = this[index];
      return child(item);
    });
  }
}
