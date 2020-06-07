import 'package:challengeProfile04/screens/header_box_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leonardo Palmeiro CV',
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.red,
        primarySwatch: Colors.blue,
        fontFamily: 'Lato',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            title: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
          headline2: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
          headline3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      home: MyHomePage(title: 'Leonardo Palmeiro CV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: double.infinity,
            color: Theme.of(context).backgroundColor,
            child: Image.asset(
              'assets/images/header.jpg',
              fit: BoxFit.cover,
            ),
          ),
          HeaderBoxScreen(),
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
