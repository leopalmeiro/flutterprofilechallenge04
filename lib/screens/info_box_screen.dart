import 'package:challengeProfile04/components/knowledge_section.dart';
import 'package:challengeProfile04/components/section.dart';
import 'package:flutter/material.dart';

class InfoBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(5.0),
      child: ListView(
        //scrollDirection: Axis.vertical,
        children: <Widget>[
          KnowledgeSection('Knowledge'),
          Section(
            title: 'Experience',
          ),
          Section(
            title: 'Education',
          ),
          Section(
            title: 'Others',
          ),
        ],
      ),
    );
  }
}
