import 'package:copa_america_app/menu.dart';
import 'package:copa_america_app/noticias.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginaInicio(),
      initialRoute: "/",
      routes: {
        '/menu':(context)=>PaginaMenu(),
        '/noticias':(context)=>PaginaNoticias(),
      },
    );
  }
}

class PaginaInicio extends StatefulWidget {
  @override
  _PaginaInicioState createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("assets/img/ic_launcher.png"),
            Text(
              'Copa América 2019',
              style: TextStyle(color: Colors.white),
            ),
            RaisedButton(
                child: Text('ACCEDER'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/menu");
                })
          ],
        ),
      ),
    );
  }
}
