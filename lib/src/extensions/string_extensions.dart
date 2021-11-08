import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:lib_msaadev/src/constants/input_formatter_constants.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

extension NetworkImageExtension on String {
  String get randomImage => 'https://picsum.photos/200/300';
  String get randomSquareImage => 'https://picsum.photos/200';

  String get defaultProfileImage => 'https://www.gravatar.com/avatar/?d=mp';
  String get defaultHighProfileImage =>
      'https://www.gravatar.com/avatar/?d=mp&s=200';
}

extension ParseString on String {
 Map get decode => json.decode(this);
}

extension LocaleString on String {
  get locale => this.tr();
}

extension StringValidatorExtension on String {
  bool get isNullOrEmpty => isEmpty;
  bool get isNotNullOrNoEmpty => isNotEmpty;

  bool get isValidEmail =>
      RegExp(InputFormatter.instance.emailRegex).hasMatch(this);
}

extension LaunchExtension on String {
  Future<bool> get launchEmail => launch('mailto:$this');
  Future<bool> get launchPhone => launch('tel:$this');
  Future<bool> get launchWebsite => launch(this);
}

extension ShareText on String {
  Future<void> shareWhatsApp() async {
    try {
      final isLaunch = await launch('whatsapp://send?text=$this');
      if (!isLaunch) await share();
    } catch (e) {
      await share();
    }
  }

  Future<void> shareMail(String title) async {
    final value = "mailto:?subject='$title'&body=$this ";
    final isLaunch = await launch(Uri.encodeFull(value));
    if (!isLaunch) await value.share();
  }

  Future<void> share() async {
    await Share.share(this);
  }
}

extension FormatterExtension on String {
  String get phoneFormatValue =>
      InputFormatter.instance.phoneFormatter.unmaskText(this);
  String get timeFormatValue =>
      InputFormatter.instance.timeFormatter.unmaskText(this);
  String get timeOverlineFormatValue =>
      InputFormatter.instance.timeFormatterOverLine.unmaskText(this);
}
