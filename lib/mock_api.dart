class MockAPI {
  static Future<Map<String, dynamic>> loadVille() {
    return Future.value({
      "_embedded": {
        "villes": [
          {
            "name": "Casablanca",
            "longitude": 0,
            "latidude": 0,
            "altitude": 0,
            "_links": {
              "self": {"href": "http://localhost:8080/villes/1"},
              "ville": {"href": "http://localhost:8080/villes/1"},
              "cinemas": {"href": "http://localhost:8080/villes/1/cinemas"}
            }
          },
          {
            "name": "Marrakech",
            "longitude": 0,
            "latidude": 0,
            "altitude": 0,
            "_links": {
              "self": {"href": "http://localhost:8080/villes/2"},
              "ville": {"href": "http://localhost:8080/villes/2"},
              "cinemas": {"href": "http://localhost:8080/villes/2/cinemas"}
            }
          },
          {
            "name": "Rabat",
            "longitude": 0,
            "latidude": 0,
            "altitude": 0,
            "_links": {
              "self": {"href": "http://localhost:8080/villes/3"},
              "ville": {"href": "http://localhost:8080/villes/3"},
              "cinemas": {"href": "http://localhost:8080/villes/3/cinemas"}
            }
          },
          {
            "name": "Tanger",
            "longitude": 0,
            "latidude": 0,
            "altitude": 0,
            "_links": {
              "self": {"href": "http://localhost:8080/villes/4"},
              "ville": {"href": "http://localhost:8080/villes/4"},
              "cinemas": {"href": "http://localhost:8080/villes/4/cinemas"}
            }
          }
        ]
      },
      "_links": {
        "self": {"href": "http://localhost:8080/villes"},
        "profile": {"href": "http://localhost:8080/profile/villes"}
      },
      "page": {"size": 20, "totalElements": 4, "totalPages": 1, "number": 0}
    });
  }

  static Future<Map<String, dynamic>> loadSalles() {
    return Future.value({
      '_embedded': {
        "salles": [
          {
            "id": 37,
            "name": "Salle1",
            "nombrePlace": 6,
            "_links": {
              "self": {"href": "http://192.168.8.106:8080/salles/37"},
              "salle": {"href": "http://192.168.8.106:8080/salles/37"},
              "projections": {
                "href":
                    "http://192.168.8.106:8080/salles/37/projections{?projection}",
                "templated": true
              },
              "places": {"href": "http://192.168.8.106:8080/salles/37/places"},
              "cinema": {"href": "http://192.168.8.106:8080/salles/37/cinema"}
            }
          }
        ]
      }
    });
  }

  static Future<Map<String, dynamic>> loadProjections(salle) {
    return Future.value({
      "_embedded": {
        "projections": [
          {
            "id": 1,
            "salle": {"id": 1, "name": "Salle1", "nombrePlace": 18},
            "tickets": [
              {
                "id": 1,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 2,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 3,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 4,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 5,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 6,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 7,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 8,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 9,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 10,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 11,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 12,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 13,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 14,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 15,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 16,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 17,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 18,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              }
            ],
            "prix": 30.0,
            "film": {
              "id": 1,
              "titre": "12 Homme en colere",
              "decription": null,
              "realisateur": null,
              "dateSortie": null,
              "duree": 3.0,
              "photo":
                  "https://images.unsplash.com/photo-1485846234645-a62644f84728?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1040&q=80"
            },
            "seance": {"heureDebut": "12:00:00"},
            "dateProjection": "2021-06-11T23:00:00.000+00:00",
            "_links": {
              "self": {"href": "http://192.168.8.106:8080/projections/1"},
              "projection": {
                "href": "http://192.168.8.106:8080/projections/1{?projection}",
                "templated": true
              },
              "seance": {
                "href": "http://192.168.8.106:8080/projections/1/seance"
              },
              "tickets": {
                "href":
                    "http://192.168.8.106:8080/projections/1/tickets{?projection}",
                "templated": true
              },
              "film": {"href": "http://192.168.8.106:8080/projections/1/film"},
              "salle": {"href": "http://192.168.8.106:8080/projections/1/salle"}
            }
          },
          {
            "id": 2,
            "salle": {"id": 1, "name": "Salle1", "nombrePlace": 18},
            "tickets": [
              {
                "id": 1,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 2,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 3,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 4,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 5,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 6,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 7,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 8,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 9,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 10,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 11,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 12,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 13,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 14,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 15,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 16,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 17,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              },
              {
                "id": 18,
                "nomClient": null,
                "prix": 30.0,
                "codePayement": 0,
                "reserve": false
              }
            ],
            "prix": 30.0,
            "film": {
              "id": 1,
              "titre": "12 Homme en colere",
              "decription": null,
              "realisateur": null,
              "dateSortie": null,
              "duree": 3.0,
              "photo":
                  "http://images.unsplash.com/photo-1489599849927-2ee91cede3ba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
            },
            "seance": {"heureDebut": "12:00:00"},
            "dateProjection": "2021-06-11T23:00:00.000+00:00",
            "_links": {
              "self": {"href": "http://192.168.8.106:8080/projections/1"},
              "projection": {
                "href": "http://192.168.8.106:8080/projections/1{?projection}",
                "templated": true
              },
              "seance": {
                "href": "http://192.168.8.106:8080/projections/1/seance"
              },
              "tickets": {
                "href":
                    "http://192.168.8.106:8080/projections/1/tickets{?projection}",
                "templated": true
              },
              "film": {"href": "http://192.168.8.106:8080/projections/1/film"},
              "salle": {"href": "http://192.168.8.106:8080/projections/1/salle"}
            }
          },
        ]
      }
    });
  }

  static Future<Map<String, dynamic>> onLoadTicket(projection, salle) {
    return Future.value({
      "_embedded": {
        "tickets": [
          {
            "id": 19,
            "nomClient": null,
            "codePayement": 0,
            "prix": 70,
            "place": {
              "numero": 1,
              "longitude": 0,
              "latidude": 0,
              "altitude": 0
            },
            "reserve": false,
            "_links": {
              "self": {"href": "http://192.168.8.106:8080/tickets/19"},
              "ticket": {
                "href": "http://192.168.8.106:8080/tickets/19{?projection}",
                "templated": true
              },
              "projection": {
                "href":
                    "http://192.168.8.106:8080/tickets/19/projection{?projection}",
                "templated": true
              },
              "place": {"href": "http://192.168.8.106:8080/tickets/19/place"}
            }
          }
        ]
      }
    });
  }
}
