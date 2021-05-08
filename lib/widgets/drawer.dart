import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/nav_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class Drawz extends StatelessWidget {
  const Drawz({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orange.withOpacity(.5),
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: navButtons(),
                )
              ],
            ),
            SizedBox(
              height: screenSize.height / 1.51,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
