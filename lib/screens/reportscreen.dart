import 'package:flutter/material.dart';
import '../customwidgets/title.dart';
import '../customwidgets/customtext.dart';

class ReportScreen extends TitleWidget {
  const ReportScreen({super.key}) : super(title: "Reports");

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      minimum: EdgeInsets.all(24),
      child: Center(
          child: Text(
        'Reports screen',
        style: CustomText.custText,
      )),
    );
  }
}
