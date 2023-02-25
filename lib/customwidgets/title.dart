import 'package:flutter/material.dart';

// custom widget for the app-bar title

abstract class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({super.key, required this.title});
}
