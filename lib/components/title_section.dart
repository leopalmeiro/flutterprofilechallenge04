import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;

  const TitleSection(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          Container(
            width: double.infinity,
            child: Divider(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
