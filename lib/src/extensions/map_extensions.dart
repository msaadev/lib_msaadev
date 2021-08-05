import 'dart:convert';

extension ParseExtension on Map {
  String get encode => json.encode(this);
}

