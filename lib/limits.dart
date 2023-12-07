import 'package:flutter/material.dart';
import 'cardView.dart';
import 'strings/string.dart';

class OffersAndLimits extends StatelessWidget {
  const OffersAndLimits({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text(AppStrings.textHeadlineTwoFirst,
              style: Theme.of(context).textTheme.displayMedium),
          const Padding(padding: EdgeInsets.only(top: 8)),
          Text(AppStrings.textHeadlineTwoSecond,
              style: Theme.of(context).textTheme.displaySmall),
          const Padding(padding: EdgeInsets.only(bottom: 8)),
          const CardAction(
              icon: Icons.speed,
              mainText: AppStrings.textChangeLimit,
              secondaryText: AppStrings.textChangeLimitSecond,
              makeBorder: true),
    
          const CardAction(
              icon: Icons.percent,
              mainText: AppStrings.textTransfers,
              secondaryText: AppStrings.textTransfersSecond,
              makeBorder: true),
        
          const CardAction(
              icon: Icons.forward,
              mainText: AppStrings.textInformation,
              secondaryText: "",
              makeBorder: false)
        ],
      ),
    );
  }
}
