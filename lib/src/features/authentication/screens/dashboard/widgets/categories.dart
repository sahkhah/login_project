import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/models/dashboard/categories_model.dart';

import '../../../../../constants/colors..dart';

class CategoriesDashboard extends StatelessWidget {
  const CategoriesDashboard({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashboardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder:(context, index) => 
          GestureDetector(
            onTap: list[index].onPress,
            child: SizedBox(
              width: 170,
              height: 45,
              child: Row(children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: darkColor,
                  ),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: txtTheme.headline6?.apply(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  //works in conjuction with the text overflow property, enables dot to be prefixed at the end of the text
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].heading,
                        style: txtTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ), //put dots to a text that's exceeding
                      Text(
                        list[index].subHeading,
                        style: txtTheme.bodyText2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ]),
            ),
          )
      )
          );
    }
}
