import 'package:flutter/material.dart';
import 'package:flutter_lab/userData.dart';
import 'chip.dart';
import 'strings/string.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(AppStrings.textInterests,
              style: Theme.of(context).textTheme.displayMedium),
          const Padding(padding: EdgeInsets.only(top: 8)),
          Text(AppStrings.textInterestsSecond,
              style: Theme.of(context).textTheme.displaySmall),
          const Padding(padding: EdgeInsets.only(bottom: 16)),
          Wrap(
            children: <Widget>[
              for (int i = 0; i < UserData.chips.length; i++)
                MyChipWidget(title: UserData.chips[i]),
            ],
          )
        ],
      ),
    );
  }
}
