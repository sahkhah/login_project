import 'package:flutter/material.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel({
    required this.title,
    required this.heading,
    required this.subHeading,
    this.onPress,
  });

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel(title: 'JS', heading: 'JavaScript', subHeading: '10 Lessons', onPress: null),
    DashboardCategoriesModel(title: 'F', heading: 'Flutter', subHeading: '11 Lessons', onPress: null),
    DashboardCategoriesModel(title: 'H', heading: 'Html', subHeading: '8 Lessons', onPress: null),
    DashboardCategoriesModel(title: 'K', heading: 'Kotlin', subHeading: '20 Lessons', onPress: null),
    DashboardCategoriesModel(title: 'P', heading: 'Python', subHeading: '100 Lessons', onPress: null),
  ];
}
