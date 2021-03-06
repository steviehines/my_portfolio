import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

List<Widget> navButtons() => [
      NavButton(
        text: "about",
        onPressed: () {
          // launch('');
        },
      ),
      NavButton(
        text: "work",
        onPressed: () {
          // launch('');
        },
      ),
      NavButton(
        text: "contact",
        onPressed: () {
          // launch('');
        },
      ),
    ];

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton({
    Key? key,
    @required this.text,
    @required this.onPressed,
    this.color = Colors.orange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}
