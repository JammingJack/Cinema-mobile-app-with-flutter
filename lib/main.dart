import 'package:flutter/material.dart';
import 'package:movie_cinema_app/MenuItem.dart';
import 'package:movie_cinema_app/salles-page.dart';
import 'package:movie_cinema_app/setting-page.dart';
import 'package:movie_cinema_app/villes-page.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: Colors.deepOrangeAccent,
      )),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final menus = [
    {'title': 'Home', 'icon': Icon(Icons.home), 'page':  VillePage()},
    {'title': 'Test Salles', 'icon': Icon(Icons.home), 'page':  SallesPage({
      'name': "Test",
      'salles': []
    })},
    {'title': 'Settings', 'icon': Icon(Icons.settings), 'page': SettingPage()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("./images/profile.png"),
                    radius: 50,
                  ),
                ),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Colors.deepOrangeAccent,
                ])),
              ),
              ...this.menus.map((item) {
                return new Column(
                  children: <Widget>[
                    Divider(
                      color: Colors.deepOrange,
                    ),
                    MenuItem(item['title'], item['icon'], (context) {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => item['page']));
                    })
                  ],
                );
              })
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Cinema App'),
        ),
        body: Center(
          child: Text('hello flutter',
              style: TextStyle(color: Colors.amber, fontSize: 23)),
        ));
  }
}
