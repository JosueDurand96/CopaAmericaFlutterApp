import 'package:flutter/material.dart';
import 'calendario.dart';
import 'equipos.dart';
import 'grupos.dart';
import 'noticias.dart';

class PaginaMenu extends StatefulWidget {
  @override
  _PaginaMenuState createState() => _PaginaMenuState();
}

class _PaginaMenuState extends State<PaginaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Opciones"),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.lightGreen,
      drawer: MenuLateral(),
      body: Container(
        padding: EdgeInsets.only(top: 100),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/ic_banner.jpg"),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext) => PaginaNoticias()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("NOTICIAS"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext) => PaginaGrupos()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("GRUPOS"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext) => PaginaEquipos()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("EQUIPOS"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext) => PaginaCalendario()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SizedBox(
                          width: 100,
                          height: 130,
                          child: Center(
                            child: Text("CALENDARIO"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('Bienvenidos'),
            accountName: Text('Copa América'),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/ic_banner.jpg"),
                  fit: BoxFit.cover),),
          ),
          Ink(
            color: Colors.green,
            child: ListTile(
              title: Text(
                "NOTICIAS",
                style: TextStyle(color: Colors.black),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => new PaginaNoticias()));
              },
            ),
          ),
          ListTile(
            title: Text(
              "GRUPOS",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => new PaginaGrupos()));
            },
          ),
          ListTile(
            title: Text(
              "EQUIPOS",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => new PaginaEquipos()));
            },
          ),
          ListTile(
            title: Text(
              "CALENDARIO",
              style: TextStyle(color: Colors.black),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => new PaginaCalendario()));
            },
          ),
        ],
      ),
    );
  }
}
