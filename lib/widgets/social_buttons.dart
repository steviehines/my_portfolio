import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/nav_buttons.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialInfo extends StatelessWidget {
  List<Widget> socialMediaWidgets() {
    return [
      NavButton(
        text: "Github",
        onPressed: () => launch(
          "https://github.com/steviehines?tab=repositories",
        ),
        color: Colors.blue,
      ),
      NavButton(
        text: "Twitter",
        onPressed: () => launch(
          "https://twitter.com/oriented0bject",
        ),
        color: Colors.blue,
      ),
      NavButton(
        text: "LinkedIn",
        onPressed: () => launch(
          "https://www.linkedin.com/in/steve-hines-6567aa1b8/",
        ),
        color: Colors.blue,
      ),
    ];
  }

  Widget copyRightText() => Text(
        "Steven Chege ©️2021",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: socialMediaWidgets(),
          ),
          copyRightText(),
        ],
      ),
      smallScreen: copyRightText(),
    );
  }
}
