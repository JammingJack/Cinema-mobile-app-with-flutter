import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movie_cinema_app/GlobalVariables.dart';
import 'dart:convert';
import './cinemas-page.dart';
import 'package:google_fonts/google_fonts.dart';
class VillePage extends StatefulWidget {

  @override
  _VillePageState createState() => _VillePageState();
}

class _VillePageState extends State<VillePage> {
  List<dynamic> listVilles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Villes',style: GoogleFonts.pacifico(),),),
      body: Center(
        child: (listVilles==null)?CircularProgressIndicator():
        ListView.builder(
            itemCount: (listVilles==null)?0:listVilles.length,
            itemBuilder: (context,index){
              return Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                          child: Text(this.listVilles[index]['name'],style: GoogleFonts.lobsterTwo(textStyle: TextStyle(color: Colors.black87, fontSize: 25))),

                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>CinemasPage(listVilles[index])));
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
