import 'package:flutter/material.dart';
import 'package:login_project/src/constants/image_strings.dart';

class CoursesModel {
  final String title;
  final Widget img;
  final VoidCallback? onPress;
  final String heading;
  final String subHeading;

  CoursesModel({
    required this.title,
    required this.img,
    this.onPress,
    required this.heading,
    required this.subHeading,
  });

  static List<CoursesModel> list = [
    CoursesModel(title: 'Flutter Crash Course ', img: const Image(image: AssetImage(topCourseImage1), height: 110,), heading: 'Programming Language', subHeading: '3 Selections'),
    CoursesModel(title: 'JavaScript Crash Course ', img: const Image(image: AssetImage(topCourseImage2),height: 110,), heading: 'Programming Language', subHeading: '7 Selections'),
    CoursesModel(title: 'Html Crash Course ', img: const Image(image: AssetImage(topCourseImage1),height: 110,), heading: 'Programming Language', subHeading: '10 Selections'),
    CoursesModel(title: 'Python Crash Course ', img: const Image(image: AssetImage(topCourseImage2),height: 110,), heading: ' Programming Language', subHeading: '5 Selections'),
   
  ];
}
