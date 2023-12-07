import 'package:flutter/material.dart';

class MyChipWidget extends StatefulWidget {
  final String title;

  const MyChipWidget({super.key, required this.title});

  @override
  _MyChipWidgetState createState() => _MyChipWidgetState(text: title);
}

class _MyChipWidgetState extends State<MyChipWidget> {
  bool chosen = false;

  final String text;
  _MyChipWidgetState({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.all(3.0),
      child: FloatingActionButton.extended(
        elevation: 0,
        splashColor: Theme.of(context).primaryColor,
        backgroundColor: chosen
            ? Theme.of(context).splashColor
            : Theme.of(context).unselectedWidgetColor,
        onPressed: () {
          setState(() {
            chosen = !chosen;
          });
        },
        label: Text(text, style: Theme.of(context).textTheme.bodySmall),
      ),
    );
  }
}
