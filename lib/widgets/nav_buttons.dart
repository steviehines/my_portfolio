import 'dart:html' as html;

import 'package:flutter/material.dart';

List<Widget> navButtons() => [
      NavButton(
        text: "about",
        onPressed: () {
          html.window.open(
              "https://docs.google.com/document/d/e/2PACX-1vTbMb-buJih_JrranmZwhHgeIbMi79ireDW6HacBnGH4PqRCfg3h98d6baO4DfGAg/pub",
              "Pk");
        },
      ),
      NavButton(
        text: "work",
        onPressed: () {
          html.window.open("https://pawan.live", "Pk");
        },
      ),
      NavButton(
        text: "contact",
        onPressed: () {
          html.window.open("https://pawan.live", "Pk");
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
