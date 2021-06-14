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
    return Future.value(
        {
          "_embedded": {
            "salles": [
              {
                "id": 1,
                "name": "Salle1",
                "nombrePlace": 11,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/salles/1"
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/salles/1"
                  },
                  "cinema": {
                    "href": "http://192.168.43.127:8080/salles/1/cinema"
                  },
                  "projections": {
                    "href": "http://192.168.43.127:8080/salles/1/projections{?projection}",
                    "templated": true
                  },
                  "places": {
                    "href": "http://192.168.43.127:8080/salles/1/places"
                  }
                }
              },
              {
                "id": 2,
                "name": "Salle2",
                "nombrePlace": 8,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/salles/2"
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/salles/2"
                  },
                  "cinema": {
                    "href": "http://192.168.43.127:8080/salles/2/cinema"
                  },
                  "projections": {
                    "href": "http://192.168.43.127:8080/salles/2/projections{?projection}",
                    "templated": true
                  },
                  "places": {
                    "href": "http://192.168.43.127:8080/salles/2/places"
                  }
                }
              },
              {
                "id": 3,
                "name": "Salle3",
                "nombrePlace": 7,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/salles/3"
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/salles/3"
                  },
                  "cinema": {
                    "href": "http://192.168.43.127:8080/salles/3/cinema"
                  },
                  "projections": {
                    "href": "http://192.168.43.127:8080/salles/3/projections{?projection}",
                    "templated": true
                  },
                  "places": {
                    "href": "http://192.168.43.127:8080/salles/3/places"
                  }
                }
              }
            ]
          },
          "_links": {
            "self": {
              "href": "http://192.168.43.127:8080/cinemas/1/salles"
            }
          }
        }
    );
  }

  static Future<Map<String, dynamic>> loadProjections(salle) {
    return Future.value(
        {
          "_embedded": {
            "projections": [
              {
                "id": 1,
                "tickets": [
                  {
                    "id": 1,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 2,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 3,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 4,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 5,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 6,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 7,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 8,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 9,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 10,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 11,
                    "nomClient": null,
                    "prix": 70,
                    "codePayement": 0,
                    "reserve": false
                  }
                ],
                "prix": 70,
                "salle": {
                  "id": 1,
                  "name": "Salle1",
                  "nombrePlace": 11
                },
                "seance": {
                  "heureDebut": "12:00:00"
                },
                "film": {
                  "id": 1,
                  "titre": "12 Homme en colere",
                  "decription": null,
                  "realisateur": null,
                  "dateSortie": null,
                  "duree": 2.5,
                  "photo": "12Hommeencolere.jpg"
                },
                "dateProjection": "2021-06-13T23:00:00.000+00:00",
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/projections/1"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/projections/1{?projection}",
                    "templated": true
                  },
                  "seance": {
                    "href": "http://192.168.43.127:8080/projections/1/seance"
                  },
                  "film": {
                    "href": "http://192.168.43.127:8080/projections/1/film"
                  },
                  "tickets": {
                    "href": "http://192.168.43.127:8080/projections/1/tickets{?projection}",
                    "templated": true
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/projections/1/salle"
                  }
                }
              },
              {
                "id": 2,
                "tickets": [
                  {
                    "id": 12,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 13,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 14,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 15,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 16,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 17,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 18,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 19,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 20,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 21,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 22,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  }
                ],
                "prix": 30,
                "salle": {
                  "id": 1,
                  "name": "Salle1",
                  "nombrePlace": 11
                },
                "seance": {
                  "heureDebut": "15:00:00"
                },
                "film": {
                  "id": 2,
                  "titre": "Forrest Gump",
                  "decription": null,
                  "realisateur": null,
                  "dateSortie": null,
                  "duree": 1.5,
                  "photo": "ForrestGump.jpg"
                },
                "dateProjection": "2021-06-13T23:00:00.000+00:00",
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/projections/2"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/projections/2{?projection}",
                    "templated": true
                  },
                  "seance": {
                    "href": "http://192.168.43.127:8080/projections/2/seance"
                  },
                  "film": {
                    "href": "http://192.168.43.127:8080/projections/2/film"
                  },
                  "tickets": {
                    "href": "http://192.168.43.127:8080/projections/2/tickets{?projection}",
                    "templated": true
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/projections/2/salle"
                  }
                }
              },
              {
                "id": 3,
                "tickets": [
                  {
                    "id": 23,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 24,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 25,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 26,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 27,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 28,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 29,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 30,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 31,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 32,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 33,
                    "nomClient": null,
                    "prix": 100,
                    "codePayement": 0,
                    "reserve": false
                  }
                ],
                "prix": 100,
                "salle": {
                  "id": 1,
                  "name": "Salle1",
                  "nombrePlace": 11
                },
                "seance": {
                  "heureDebut": "17:00:00"
                },
                "film": {
                  "id": 3,
                  "titre": "Green Book",
                  "decription": null,
                  "realisateur": null,
                  "dateSortie": null,
                  "duree": 1,
                  "photo": "GreenBook.jpg"
                },
                "dateProjection": "2021-06-13T23:00:00.000+00:00",
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/projections/3"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/projections/3{?projection}",
                    "templated": true
                  },
                  "seance": {
                    "href": "http://192.168.43.127:8080/projections/3/seance"
                  },
                  "film": {
                    "href": "http://192.168.43.127:8080/projections/3/film"
                  },
                  "tickets": {
                    "href": "http://192.168.43.127:8080/projections/3/tickets{?projection}",
                    "templated": true
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/projections/3/salle"
                  }
                }
              },
              {
                "id": 4,
                "tickets": [
                  {
                    "id": 34,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 35,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 36,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 37,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 38,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 39,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 40,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 41,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 42,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 43,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 44,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  }
                ],
                "prix": 30,
                "salle": {
                  "id": 1,
                  "name": "Salle1",
                  "nombrePlace": 11
                },
                "seance": {
                  "heureDebut": "19:00:00"
                },
                "film": {
                  "id": 4,
                  "titre": "La ligne Verte",
                  "decription": null,
                  "realisateur": null,
                  "dateSortie": null,
                  "duree": 1.5,
                  "photo": "LaligneVerte.jpg"
                },
                "dateProjection": "2021-06-13T23:00:00.000+00:00",
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/projections/4"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/projections/4{?projection}",
                    "templated": true
                  },
                  "seance": {
                    "href": "http://192.168.43.127:8080/projections/4/seance"
                  },
                  "film": {
                    "href": "http://192.168.43.127:8080/projections/4/film"
                  },
                  "tickets": {
                    "href": "http://192.168.43.127:8080/projections/4/tickets{?projection}",
                    "templated": true
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/projections/4/salle"
                  }
                }
              },
              {
                "id": 5,
                "tickets": [
                  {
                    "id": 45,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 46,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 47,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 48,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 49,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 50,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 51,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 52,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 53,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 54,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  },
                  {
                    "id": 55,
                    "nomClient": null,
                    "prix": 30,
                    "codePayement": 0,
                    "reserve": false
                  }
                ],
                "prix": 30,
                "salle": {
                  "id": 1,
                  "name": "Salle1",
                  "nombrePlace": 11
                },
                "seance": {
                  "heureDebut": "21:00:00"
                },
                "film": {
                  "id": 5,
                  "titre": "Le Parrain",
                  "decription": null,
                  "realisateur": null,
                  "dateSortie": null,
                  "duree": 1.5,
                  "photo": "LeParrain.jpg"
                },
                "dateProjection": "2021-06-13T23:00:00.000+00:00",
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/projections/5"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/projections/5{?projection}",
                    "templated": true
                  },
                  "seance": {
                    "href": "http://192.168.43.127:8080/projections/5/seance"
                  },
                  "film": {
                    "href": "http://192.168.43.127:8080/projections/5/film"
                  },
                  "tickets": {
                    "href": "http://192.168.43.127:8080/projections/5/tickets{?projection}",
                    "templated": true
                  },
                  "salle": {
                    "href": "http://192.168.43.127:8080/projections/5/salle"
                  }
                }
              }
            ]
          },
          "_links": {
            "self": {
              "href": "http://192.168.43.127:8080/salles/1/projections?projection=filmNeededInfoProjection"
            }
          }
        }
    );
  }

  static Future<Map<String, dynamic>> onLoadTicket(projection, salle) {
    return Future.value(
        {
          "_embedded": {
            "tickets": [
              {
                "id": 1,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 1,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/1"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/1{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/1/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/1/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 2,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 2,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/2"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/2{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/2/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/2/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 3,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 3,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/3"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/3{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/3/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/3/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 4,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 4,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/4"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/4{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/4/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/4/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 5,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 5,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/5"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/5{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/5/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/5/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 6,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 6,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/6"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/6{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/6/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/6/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 7,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 7,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/7"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/7{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/7/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/7/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 8,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 8,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/8"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/8{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/8/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/8/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 9,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 9,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/9"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/9{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/9/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/9/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 10,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 10,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/10"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/10{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/10/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/10/projection{?projection}",
                    "templated": true
                  }
                }
              },
              {
                "id": 11,
                "prix": 70,
                "codePayement": 0,
                "nomClient": null,
                "place": {
                  "numero": 11,
                  "longitude": 0,
                  "latidude": 0,
                  "altitude": 0
                },
                "reserve": false,
                "_links": {
                  "self": {
                    "href": "http://192.168.43.127:8080/tickets/11"
                  },
                  "ticket": {
                    "href": "http://192.168.43.127:8080/tickets/11{?projection}",
                    "templated": true
                  },
                  "place": {
                    "href": "http://192.168.43.127:8080/tickets/11/place"
                  },
                  "projection": {
                    "href": "http://192.168.43.127:8080/tickets/11/projection{?projection}",
                    "templated": true
                  }
                }
              }
            ]
          },
          "_links": {
            "self": {
              "href": "http://192.168.43.127:8080/projections/1/tickets?projection=ticketProj"
            }
          }
        }
    );
  }
}
