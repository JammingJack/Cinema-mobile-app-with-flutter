import 'package:google_fonts/google_fonts.dart';
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
      appBar: AppBar(title: Text('Cinemas de ${widget.ville['name']}',style: GoogleFonts.pacifico(),),),
      body: Center(
          child: (listCinemas==null)?CircularProgressIndicator():
          ListView.builder(
              itemCount: (listCinemas==null)?0:listCinemas.length,
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Card(
                        shadowColor: Colors.deepOrangeAccent,
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        color: Colors.deepOrangeAccent,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                minimumSize: Size(double.infinity, 80)
                          ),
                          child: Text(this.listCinemas[index]['name'],style: GoogleFonts.lobsterTwo(textStyle: TextStyle(color: Colors.black87, fontSize: 25))),

                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>SallesPage(listCinemas[index])));
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 12,),
                  ],
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
