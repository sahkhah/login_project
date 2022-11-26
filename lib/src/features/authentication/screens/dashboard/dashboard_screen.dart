import 'package:flutter/material.dart';
import 'package:login_project/src/constants/colors..dart';
import 'package:login_project/src/constants/image_strings.dart';
import 'package:login_project/src/constants/sizes.dart';
import 'package:login_project/src/constants/text_strings.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/widgets/appbar.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/widgets/banners.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/widgets/categories.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/widgets/search.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/widgets/topcourses.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: const DashboardAppBar(),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(dashboardPadding),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Title
                    Text(
                      dashBoardBannerTitle1,
                      style: txtTheme.bodyText2,
                    ),
                    Text(
                      dashBoardHeading,
                      style: txtTheme.headline2,
                    ),
                    const SizedBox(
                      height: dashboardPadding,
                    ),

                    //Search Box
                    SearchDashboard(txtTheme: txtTheme),
                    const SizedBox(
                      height: dashboardPadding,
                    ),

                    //Categories
                    CategoriesDashboard(txtTheme: txtTheme),
                    const SizedBox(
                      height: dashboardPadding,
                    ),

                    //Banners
                    BannersDashboard(txtTheme: txtTheme),
                    const SizedBox(
                      height: dashboardPadding,
                    ),

                    //Top Courses
                    Text(
                      dashBoardTopCourses,
                      style: txtTheme.headline6?.apply(fontSizeFactor: 1.2),
                    ),
                    TopCoursesDashboard(txtTheme: txtTheme)
                  ])),
        ));
  }
}






