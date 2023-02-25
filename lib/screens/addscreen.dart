import 'package:flutter/material.dart';
import '../customwidgets/title.dart';
import '../customwidgets/customtext.dart';

class AddScreen extends TitleWidget {
  const AddScreen({super.key}) : super(title: "Add");

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      minimum: EdgeInsets.all(24),
      child: Center(
          child: Text(
        'Add Screen',
        style: CustomText.custText,
      )),
    );
  }
}
