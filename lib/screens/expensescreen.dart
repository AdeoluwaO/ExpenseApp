import 'package:flutter/material.dart';
import '../customwidgets/title.dart';
import '../customwidgets/customtext.dart';

// still in the test phase will add other components later

class ExpensesScreen extends TitleWidget {
  const ExpensesScreen({super.key}) : super(title: "Expenses");

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      minimum: EdgeInsets.all(24),
      child: Center(
        child: Text(
          'Expenses Screen',
          style: CustomText.custText,
        ),
      ),
    );
  }
}
