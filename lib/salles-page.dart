import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
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
  Map<int,int> pressCounter;
  List<dynamic> listSalles;
  List<dynamic> listSelectedTickets=[];
  List<int> listSelectedTicketsPlaceNumbers=[];
  TextEditingController clientNameController = new TextEditingController();
  TextEditingController codePayementController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salles de ${widget.cinema['name']}',style: GoogleFonts.pacifico(),),
      ),
      body: Center(
          child: (listSalles == null)
              ? CircularProgressIndicator()
              : ListView.builder(
                  itemCount: (listSalles == null) ? 0 : listSalles.length,
                  itemBuilder: (context, index) {
                    return Card(
                        color: Colors.white70,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrangeAccent),
                                child: Text(this.listSalles[index]['name'],
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {
                                  loadProjection(listSalles[index]);
                                },
                              ),
                            ),
                            if (this.listSalles[index]['projections'] != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Image.network(
                                      GlobalData.host +
                                          "/imageFilm/${this.listSalles[index]['currentProjection']['film']['id']}",
                                      //key: ValueKey(new Random().nextInt(100)),
                                      width: 150,
                                    ),
                                    IntrinsicWidth(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children:<Widget> [
                                          ...(this.listSalles[index]['projections'] as List<dynamic>).map((projection){
                                            return ElevatedButton(
                                              child: Text("${projection['seance']['heureDebut']} (${projection['film']['duree']}H) - ${projection['prix']}DH",),
                                              style: ElevatedButton.styleFrom(
                                                primary: (this.listSalles[index]['currentProjection']['id']==projection['id'])?Colors.lightGreen:Colors.deepOrangeAccent,
                                              ),
                                              onPressed: (){
                                                onLoadTickets(projection, this.listSalles[index]);
                                              },
                                            );
                                          })
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            if(this.listSalles[index]['currentProjection']!=null &&
                                this.listSalles[index]['currentProjection']['listTickets']!=null &&
                                this.listSalles[index]['currentProjection']['listTickets'].length>0)
                              Column(
                                children: <Widget> [
                                  Row(
                                    children: <Widget> [
                                      Text("nombre des places disponibles : ${this.listSalles[index]['currentProjection']['availablePlacesCount']}")
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    child: TextField(
                                      controller: clientNameController,
                                      decoration: InputDecoration(
                                          hintText: "Votre Nom : ",
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                          )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    child: TextField(
                                      controller: codePayementController,
                                      decoration: InputDecoration(
                                          hintText: "Code Payement : ",
                                          hintStyle: TextStyle(
                                            color: Colors.black,
                                          )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    child: Text(listSelectedTicketsPlaceNumbers.toString()),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    child: ElevatedButton(
                                      onPressed: (){
                                        makeTransaction();
                                      },
                                      child: Text("Acheter!!"
                                      ),
                                      style: ElevatedButton.styleFrom(
                                      primary: Colors.lightGreen,
                                    ),
                                    ),
                                  ),
                                  Wrap(
                                    children: <Widget> [
                                      ...(this.listSalles[index]['currentProjection']['listTickets'] as List<dynamic>).map((ticket){
                                        if(ticket['reserve']==false)
                                          return Container(
                                            width: 50,
                                            padding: EdgeInsets.all(2),
                                            child: ElevatedButton(
                                              child: Text("${ticket['place']['numero']}", style: TextStyle(fontSize: 11),),
                                              onPressed: (){

                                                onTicketSelect(ticket);

                                              },
                                            ),
                                          );
                                        else return Container();
                                      })
                                    ],
                                  )
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
    print(url);
    http.get(Uri.parse(url)).then((resp) {
      setState(() {
        salle['projections'] = json.decode(resp.body)['_embedded']['projections'];
        salle['currentProjection'] = salle['projections'][0];
        salle['currentProjection']['listTickets']=[];
      });
    }).catchError((err) {
      print(err);
    });
  }

  void onLoadTickets(projection, salle) {
    String url = projection['_links']['tickets']['href'].toString().replaceAll('{?projection}', '?projection=ticketProj');
    //String url2=GlobalData.host+"/projections/${projection['id']}tickets?projections=ticketsProj";
    print('ticket  '+url);
    http.get(Uri.parse(url)).then((resp){
      setState(() {
        projection['listTickets'] = json.decode(resp.body)['_embedded']['tickets'];
        salle['currentProjection']=projection;
        projection['availablePlacesCount'] = numberPlacesAvailable(projection);
      });
    }).catchError((err){
      print(err);
    });
  }

  numberPlacesAvailable(projection){
    int count=0;
    for(int i=0;i<projection['tickets'].length;i++){
      if(projection['tickets'][i]['reserve']==false)++count;
    }
    return count;
  }

  Future<void> makeTransaction() async {
    String clientName = clientNameController.text;
    int codePayment = int.parse(codePayementController.text);
    List<int> ticketIds = [];
    for(int i=0;i<listSelectedTickets.length;i++){
      ticketIds.insert(i, listSelectedTickets.elementAt(i)['id']);
    }
    final response = await http.post(
        Uri.parse(GlobalData.host+"/payerTickets"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "nomClient":clientName,
          "codePayement":codePayment,
          "tickets":ticketIds,
    }));
    if(response.statusCode==200){
      print("success");
    }else{
      throw Exception(response.toString());
    }
  }
 Widget onTicketSelect(ticket){
    setState(() {
      if(listSelectedTickets.contains(ticket)){
        listSelectedTickets.remove(ticket);
        listSelectedTicketsPlaceNumbers.remove(ticket['place']['numero']);
        return AlertDialog(
          title: Text("succes"),
        );
      }else{
        listSelectedTickets.add(ticket);
        listSelectedTicketsPlaceNumbers.add(ticket['place']['numero']);
        return AlertDialog(
          title: Text("failure"),
        );
      }

    });
  }
}
