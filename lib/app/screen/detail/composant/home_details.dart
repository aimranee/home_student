import 'package:easyhome/app/screen/class/model/annonce.dart';
import 'package:flutter/material.dart';

class HomeDetails extends StatefulWidget {
  final Annonce annonce;

  HomeDetails(this.annonce);

  @override
  _HomeDetailsState createState() => _HomeDetailsState();
}

class _HomeDetailsState extends State<HomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text("Home information"),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Prix",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "${widget.annonce.prix} DH",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(Icons.attach_money),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Addresse",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "${widget.annonce.adresse}",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(Icons.location_searching),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Nombre des Personnes",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "${widget.annonce.limitPersonne}",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(Icons.people),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Nombre de chambres",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "${widget.annonce.rooms}",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(Icons.home_filled),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "Prix",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  subtitle: Text(
                    "${widget.annonce.tele}",
                    style: TextStyle(fontSize: 18),
                  ),
                  leading: Icon(Icons.call),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    "",
                    style: TextStyle(),
                  ),
                  subtitle: Text(""),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
