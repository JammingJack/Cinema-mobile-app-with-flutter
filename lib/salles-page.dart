import 'package:http/http.dart' as http;
import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text('Salles de ${widget.cinema['name']}'),),
      body: Center(
          child: (listSalles==null)?CircularProgressIndicator():
          ListView.builder(
              itemCount: (listSalles==null)?0:listSalles.length,
              itemBuilder: (context,index){
                return Card(
                  color: Colors.deepOrangeAccent,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white
                    ),
                    child: Text(this.listSalles[index]['name'],style: TextStyle(color: Colors.white)),

                    /*onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>SallesPage(listSalles[index])));
                    },*/
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
    loadSalles();
  }
  loadSalles(){
    String url = this.widget.cinema['_links']['salles']['href'];;
    http.get(Uri.parse(url))
        .then((resp){
      setState(() {
        this.listSalles=json.decode(resp.body)['_embedded']['salles'];
      });
    }).catchError((err){
      log('error fetchhing salles of ${this.widget.cinema['name']}');
    });
  }
}
