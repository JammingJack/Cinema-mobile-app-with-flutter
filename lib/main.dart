import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_cinema_app/MenuItem.dart';
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
          title: Text('Cine'
              'App',style: GoogleFonts.pacifico(),),
        ),
        body: Center(
          child: Image(image: AssetImage("./images/cinema_logo_home.png"),
          width: 800,),
        ));
  }
}
