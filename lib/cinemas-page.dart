import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movie_cinema_app/salles-page.dart';

class CinemasPage extends StatefulWidget {
  dynamic ville;
  CinemasPage(this.ville);
  @override
  _CinemasPageState createState() => _CinemasPageState();
}

class _CinemasPageState extends State<CinemasPage> {
  List<dynamic> listCinemas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cinema de ${widget.ville['name']}'),),
      body: Center(
          child: (listCinemas==null)?CircularProgressIndicator():
          ListView.builder(
              itemCount: (listCinemas==null)?0:listCinemas.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.deepOrangeAccent,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white
                    ),
                    child: Text(this.listCinemas[index]['name'],style: TextStyle(color: Colors.red)),

                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>SallesPage(listCinemas[index])));
                    },
                  ),
                );
              })
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCinemas();
  }
  loadCinemas(){
    String url = this.widget.ville['_links']['cinemas']['href'];;
    http.get(Uri.parse(url))
    .then((resp){
      setState(() {
        this.listCinemas=json.decode(resp.body)['_embedded']['cinemas'];
      });
    }).catchError((err){
      print('error fetchhing cinemas of ${this.widget.ville['name']}');
    });
  }
}
