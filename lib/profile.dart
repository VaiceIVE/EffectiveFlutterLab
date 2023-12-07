import 'package:flutter/material.dart';
import 'listButtons.dart';
import 'limits.dart';
import 'interests.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[ButtonList(), OffersAndLimits(), Interests()],
            )),
      ],
    );
  }
}
