import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:challengeProfile04/components/title_section.dart';
import 'package:challengeProfile04/models/knowledge_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KnowledgeSection extends StatelessWidget {
  final String title;

  const KnowledgeSection(this.title);

  @override
  Widget build(BuildContext context) {
    List<KnowledgeItem> _knonwledgeItems = [
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.angular, title: 'Angular'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.html5, title: 'Html 5'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.css3, title: 'Css'),
      KnowledgeItem(knowledgeIcon: Icons.developer_board, title: 'Management'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.react, title: 'React'),
      KnowledgeItem(
          knowledgeIcon: FontAwesomeIcons.react, title: 'React-Native'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.java, title: 'Java'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.database, title: 'Sql'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.database, title: 'Mongo'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.nodeJs, title: 'NodeJs'),
      KnowledgeItem(knowledgeIcon: FontAwesomeIcons.docker, title: 'Docker'),
    ];
    return Column(
      children: <Widget>[
        TitleSection(title),
        Container(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _knonwledgeItems.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  margin: EdgeInsets.only(right: 15),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.black12,
                        width: 1.0,
                      ),
                    ),
                    //Border.all(color: Colors.black12, width: 2.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(_knonwledgeItems[index].knowledgeIcon,
                              size: 50,
                              color: Color((Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                                  .withOpacity(1.0)),
                          Spacer(),
                          AutoSizeText(
                            _knonwledgeItems[index].title,
                            style: Theme.of(context).textTheme.headline6,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
