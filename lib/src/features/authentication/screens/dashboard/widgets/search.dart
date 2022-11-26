import 'package:flutter/material.dart';

import '../../../../../constants/text_strings.dart';
class SearchDashboard extends StatelessWidget {
  const SearchDashboard({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
          border: Border(
              left: BorderSide(
        width: 4,
        color: Colors.black,
      ))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              dashBoardSearch,
              style: txtTheme.headline2
                  ?.apply(color: Colors.grey.withOpacity(0.1)),
            ),
            const Icon(Icons.mic),
          ]),
    );
  }
}
