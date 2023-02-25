import 'package:flutter/material.dart';
import '../customwidgets/title.dart';
import '../customwidgets/customtext.dart';

class SettingsScreen extends TitleWidget {
  const SettingsScreen({super.key}) : super(title: "Settings");

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      minimum: EdgeInsets.all(24),
      child: Center(
          child: Text(
        'Settings screen',
        style: CustomText.custText,
      )),
    );
  }
}
