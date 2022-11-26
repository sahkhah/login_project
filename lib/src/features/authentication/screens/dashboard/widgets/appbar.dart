import 'package:flutter/material.dart';

import '../../../../../constants/colors..dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';


class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        appName,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: true, //sets the title in the center
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: cardBgColor,
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(userProfileImage))),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
