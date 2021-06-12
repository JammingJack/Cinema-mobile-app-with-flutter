import 'dart:math';

import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movie_cinema_app/GlobalVariables.dart';

class SallesPage extends StatefulWidget {
  dynamic cinema;
  SallesPage(this.cinema);
  @override
  _SallesPageState createState() => _SallesPageState();
}

class _SallesPageState extends State<SallesPage> {
  List<dynamic> listSalles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salles de ${widget.cinema['name']}'),
      ),
      body: Center(
          child: (listSalles == null)
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: (listSalles == null) ? 0 : listSalles.length,
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.deepOrangeAccent,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                child: Text(this.listSalles[index]['name'],
                                    style: TextStyle(color: Colors.black)),
                                onPressed: () {
                                  loadProjection(listSalles[index]);
                                },
                              ),
                            ),
                            if(this.listSalles[index]['projections']!=null)
                              Row(
                                children: <Widget>[
                                  Image.network(
                              GlobalData.host+"/imageFilm/${this.listSalles[index]['currentProjection']['film']['id']}",
                                    //key: ValueKey(new Random().nextInt(100)),
                                    width: 100,),
                                ],
                              )

                          ],
                        ));
                  })),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSalles();
  }

  loadSalles() {
    String url = this.widget.cinema['_links']['salles']['href'];
    ;
    http.get(Uri.parse(url)).then((resp) {
      setState(() {
        this.listSalles = json.decode(resp.body)['_embedded']['salles'];
      });
    }).catchError((err) {
      print('error fetchhing salles of ${this.widget.cinema['name']}');
    });
  }

  void loadProjection(salle) {
    String url = salle['_links']['projections']['href']
        .toString()
        .replaceAll("{?projection}", "?projection=filmNeededInfoProjection");
    http.get(Uri.parse(url)).then((resp) {
      setState(() {
        salle['projections'] = json.decode(resp.body)['_embedded']['projections'];
        salle['currentProjection']=salle['projections'][0];
      });
    }).catchError((err) {
      print(err);
    });
  }
}
