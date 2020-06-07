import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: CircleAvatar(
        radius: 55,
        backgroundColor: Colors.black45,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile.jpg'),
        ),
      ),
    );
  }
}
