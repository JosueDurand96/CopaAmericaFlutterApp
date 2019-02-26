import 'package:flutter/material.dart';

class PaginaNoticias extends StatefulWidget {
  @override
  _PaginaNoticiasState createState() => _PaginaNoticiasState();
}

class _PaginaNoticiasState extends State<PaginaNoticias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NOTICIAS"),),
    );
  }
}
