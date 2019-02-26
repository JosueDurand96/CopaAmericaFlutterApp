import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;

class PaginaNoticias extends StatefulWidget {
  @override
  _PaginaNoticiasState createState() => _PaginaNoticiasState();
}

class _PaginaNoticiasState extends State<PaginaNoticias> {
  String url="http://192.168.1.60/fixture/public/jsonnoticias";
  List data;

  Future<String>Recibir()async{
    var response = await http.get(Uri.encodeFull(url),headers:{"Accept":"application/json"});
    setState(() {
      var extraerData =json.decode(response.body);
      data=extraerData["listaNoticias"];
      print(data.toString());
    });
  }
  @override
  void initState() {
    this.Recibir();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NOTICIAS"),backgroundColor: Colors.green,),
      body: Center(

        child: ListView.builder(
          itemCount:data==null ? 0 : data.length,
            itemBuilder: (BuildContext context,i){
            return Card(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Center(child: CircularProgressIndicator(),),
                      Center(child: Image.network("http://192.168.1.60/fixture/public/img/noticias/"+data[i]['urlfoto']
                      ),
                      ),
                    ],
                  ),
                  Text(data[i]['titulo'],style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(data[i]['updated_at']),
                  ),
                ],
              ),
            );
            }
        ),
      ),
    );
  }
}
