import 'package:flutter/material.dart';

class CardAction extends StatelessWidget {
  final IconData icon;
  final String mainText;
  final String secondaryText;
  final bool makeBorder;

  const CardAction(
      {super.key,
      required this.icon,
      required this.mainText,
      required this.secondaryText,
      required this.makeBorder});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: makeBorder
                      ? Theme.of(context).disabledColor
                      : Colors.white,
                  width: 0))),
      height: 65,
      child: InkWell(
        onTap: () {},
        splashColor: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
            const Padding(padding: EdgeInsets.only(right: 12)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(mainText,
                    style: Theme.of(context).textTheme.bodyLarge,
                    softWrap: true),
                if (secondaryText != "")
                  Text(secondaryText,
                      style: Theme.of(context).textTheme.displaySmall)
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.keyboard_arrow_right,
                    color: Theme.of(context).disabledColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
