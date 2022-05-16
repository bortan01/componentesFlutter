import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text("Soy un titulo"),
            subtitle: Text(
                "Consectetur sunt id labore dolor excepteur cillum. Elit magna aute irure mollit excepteur duis fugiat sint velit voluptate."),
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => {},
                  child: const Text("ok"),
                ),
                TextButton(
                  onPressed: () => {},
                  child: const Text(
                    "Cancel",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
