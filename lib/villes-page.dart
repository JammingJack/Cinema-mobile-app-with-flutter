import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_cinema_app/GlobalVariables.dart';
import 'dart:convert';
import './cinemas-page.dart';
class VillePage extends StatefulWidget {

  @override
  _VillePageState createState() => _VillePageState();
}

class _VillePageState extends State<VillePage> {
  List<dynamic> listVilles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Villes'),),
      body: Center(
        child: (listVilles==null)?CircularProgressIndicator():
        ListView.builder(
            itemCount: (listVilles==null)?0:listVilles.length,
            itemBuilder: (context,index){
              return Card(
                color: Colors.deepOrangeAccent,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white
                  ),
                  child: Text(this.listVilles[index]['name'],style: TextStyle(color: Colors.red)),

                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>CinemasPage(listVilles[index])));
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
    loadVille();
  }
  void loadVille(){
    String url = GlobalData.host+"/villes";
    http.get(Uri.parse(url))
      .then((resp){
        setState(() {
          this.listVilles=json.decode(resp.body)['_embedded']['villes'];
        });
    }).catchError((e){
      print(e);
    });
  }
}
