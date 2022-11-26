import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/models/dashboard/courses_model.dart';

import '../../../../../constants/colors..dart';
import '../../../../../constants/sizes.dart';

class TopCoursesDashboard extends StatelessWidget {
  const TopCoursesDashboard({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = CoursesModel.list;
    return SizedBox(
      height: 250,
      child: Expanded(
        child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder:(context, index) => 
            SizedBox(
              width: 320,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 5),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardBgColor,
                  ),
                  child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: Text(
                                    list[index].title,
                                    style: txtTheme.headline4,
                                    maxLines: 2,
                                    overflow:
                                        TextOverflow.ellipsis)),
                            Flexible(
                                child: list[index].img,),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder()),
                                child:
                                    const Icon(Icons.play_arrow)),
                            const SizedBox(
                              width: dashboardPadding,
                            ),
                            Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  list[index].subHeading,
                                  style: txtTheme.headline4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  list[index].heading,
                                  style: txtTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
