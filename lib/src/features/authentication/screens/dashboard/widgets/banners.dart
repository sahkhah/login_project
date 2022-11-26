import 'package:flutter/material.dart';

import '../../../../../constants/colors..dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class BannersDashboard extends StatelessWidget {
  const BannersDashboard({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: cardBgColor,
            ),
            child: Column(
              children: [
                Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: const [
                      Flexible(child: (Icon(Icons.bookmark))),
                      Flexible(
                          child: Image(
                              image: AssetImage(bannerImage2))),
                    ]),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  dashBoardBannerTitle1,
                  style: txtTheme.headline6,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  dashBoardBannerSubtitle,
                  style: txtTheme.bodyText2,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: dashboardCardPadding,
        ),
        Expanded(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cardBgColor,
              ),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: const [
                        Flexible(child: Icon(Icons.bookmark)),
                        Flexible(
                            child: Image(
                                image:
                                    AssetImage(bannerImage2))),
                      ]),
                  Text(
                    dashBoardBannerTitle2,
                    style: txtTheme.headline6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    dashBoardBannerSubtitle,
                    style: txtTheme.bodyText2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(dashBoardButton)),
            )
          ],
        ))
      ],
    );
  }
}