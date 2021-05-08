import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:my_portfolio/functions/utils.dart';
import 'package:my_portfolio/widgets/responsive_widget.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => ClipRRect(
        borderRadius: BorderRadius.circular(255),
        child: FadeInImage.memoryNetwork(
          height: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          width: ResponsiveWidget.isSmallScreen(context)
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.width * 0.25,
          fit: BoxFit.cover,
          placeholder: kTransparentImage,
          image: path('assets/images/metoo.png'),
        ),
      );

  final profileData = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Steven\nChege",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Text(
        "A Freelance Developer Expert for Dart & \nCross-Platform Development.\n"
        "I am also an undergrad student \nfocusing on enterpreneurial opportunities.\n"
        "Additionally proficient in Linux \ntechnologies and Cloud Computing.",
        softWrap: true,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 60,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            width: screenSize.width / 11,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profileData,
              Buttons(),
            ],
          )
        ],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: screenSize.height / 11,
          ),
          profileData,
          Buttons(),
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RaisedButton(
          shape: StadiumBorder(),
          child: Text("Resume"),
          color: Colors.red,
          onPressed: () {
            launch(
              "https://docs.google.com/document/d/e/2PACX-1vTbMb-buJih_JrranmZwhHgeIbMi79ireDW6HacBnGH4PqRCfg3h98d6baO4DfGAg/pub",
            );
          },
          padding: EdgeInsets.all(10),
        ),
        SizedBox(
          width: 20,
        ),
        OutlineButton(
          borderSide: BorderSide(
            color: Colors.red,
          ),
          shape: StadiumBorder(),
          child: Text("Say Hi!"),
          color: Colors.red,
          onPressed: () {
            launch(
              "https://api.whatsapp.com/send?phone=+254722755322",
            );
          },
          padding: EdgeInsets.all(10),
        ),
        // SizedBox(
        //   width: 20,
        // ),
        // DownloadButton(
        //   status: status,
        //   onDownload: onDownload,
        //   onCancel: onCancel,
        //   onOpen: onOpen,
        // ),
      ],
    );
  }
}
