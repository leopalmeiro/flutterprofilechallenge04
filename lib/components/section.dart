import 'package:challengeProfile04/components/title_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Section extends StatelessWidget {
  final String title;
  const Section({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleSection(title),
        Container(
          height: 200,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                switch (title) {
                  case 'Experience':
                    return ListTile(
                      leading: Icon(Icons.computer),
                      title: Text('Work Experience ${index + 1}'),
                      subtitle: Text('Developer'),
                    );
                    break;
                  case 'Education':
                    return ListTile(
                      leading: Icon(Icons.local_library),
                      title: Text('Education ${index + 1}'),
                      subtitle: Text('MIT University'),
                    );
                    break;
                  case 'Others':
                    return ListTile(
                      leading: Icon(Icons.dashboard),
                      title: Text('Another Informations ${index + 1}'),
                      subtitle: Text('MIT University'),
                    );
                    break;
                  default:
                }
              }),
        ),
      ],
    );
  }
}
