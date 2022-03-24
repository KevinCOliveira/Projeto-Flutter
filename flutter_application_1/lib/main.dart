import 'package:flutter/material.dart';

void main (){
  runApp(new ListaTarefasApp());

}

class ListaTarefasApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ListaScreen()
    );
  }

}

class ListaScreen extends StatelessWidget {   @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de tarefas"),
        ),
        body: Column(),
      );
  }
}




