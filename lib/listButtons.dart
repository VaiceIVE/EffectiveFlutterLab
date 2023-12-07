import 'package:flutter/material.dart';
import 'scrollButton.dart';
import 'strings/string.dart';
import 'userData.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(AppStrings.textHeadlineOneFirst,
                style: Theme.of(context).textTheme.displayMedium),
            const Padding(padding: EdgeInsets.only(top: 8)),
            Text(AppStrings.textHeadlineOneSecond,
                style: Theme.of(context).textTheme.displaySmall),
            SizedBox(
              height: 160,
              child: ListView(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (int i = 0; i < UserData.list.length; i++)
                    ButtonScroll(
                        image: UserData.list[i].image,
                        name: UserData.list[i].title,
                        date: UserData.list[i].date,
                        price: UserData.list[i].price),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
