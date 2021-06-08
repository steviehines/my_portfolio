import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/drawer.dart';
import 'package:my_portfolio/widgets/nav_header.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';
import 'widgets/nav_buttons.dart';
import 'widgets/profile_info.dart';
import 'widgets/social_buttons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.black87,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawz(screenSize: screenSize)
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            child: ResponsiveWidget(
              largeScreen: Column(
                children: <Widget>[
                  NavHeader(navButtons: navButtons()),
                  SizedBox(
                    height: screenSize.height / 11,
                  ),
                  ProfileInfo(),
                  SizedBox(
                    height: screenSize.height / 31,
                  ),
                  SocialInfo(),
                  SizedBox(
                    height: screenSize.height / 11,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
