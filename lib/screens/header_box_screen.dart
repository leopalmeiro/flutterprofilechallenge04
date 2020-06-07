import 'package:challengeProfile04/components/header_info.dart';
import 'package:challengeProfile04/components/profile_picture.dart';
import 'package:flutter/material.dart';

class HeaderBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 200,
          child: Column(
            children: <Widget>[
              HeaderInfo(),
              //AboutInfo(),
            ],
          ),
        ),
        ProfilePicture(),
      ],
    );
  }
}
