import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderInfo extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 60),
            child: ListTile(
              title: Text(
                'Leonardo Palmeiro',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
              subtitle: Text('FullStack | Flutter Developer',
                  style: Theme.of(context).textTheme.headline2,
                  textAlign: TextAlign.center),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.github,
                  size: 40,
                  color: Color(0xFF211F1F),
                ),
                onPressed: () {
                  _launchURL('http://www.google.com');
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                  size: 40,
                  color: Color(0xFF007bb5),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.envelope,
                  size: 40,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.medium,
                  size: 40,
                  color: Color(0xFF02b875),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
