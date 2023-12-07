import 'package:flutter/material.dart';

class ButtonScroll extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String price;

  const ButtonScroll(
      {super.key, required this.image,
      required this.name,
      required this.date,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(3),
        width: 240,
        child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            splashColor: Theme.of(context).splashColor,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(image),
                      const Padding(padding: EdgeInsets.only(right: 8)),
                      Text(name, style: Theme.of(context).textTheme.bodyLarge)
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 22)),
                  Text(date,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodySmall),
                  Text(price,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.displaySmall)
                ],
              ),
            )));
  }
}
