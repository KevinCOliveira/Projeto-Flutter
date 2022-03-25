// ignore_for_file: unnecessary_new, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'tarefa.dart';

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

class ListaScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return new ListaScreenState();
  }
} 


class ListaScreenState extends State<ListaScreen> { 

    List<Tarefa> tarefas = new List<Tarefa>();
    TextEditingController controller = new TextEditingController();

    void adicionaTarefa(String nome) {
      setState(() {
        tarefas.add(Tarefa(nome));
      });
      
      controller.clear();
    }



  Widget getItem(Tarefa tarefa){
    return new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: new Icon(tarefa.concluida ? Icons.check_box: Icons.check_box_outline_blank, color:Colors.green, size: 42.0,),
                  padding: EdgeInsets.only(left: 10.0, right: 30.0),
                  onPressed: () { 
                    setState(() {
                      tarefa.concluida=true;
                    });
                  },              
                  ),
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(tarefa.nome,style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                      Text(tarefa.data.toString()),
                    ],

                  )
              ],
            );
  }
  
  
  
  
    @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Lista de tarefas"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                onSubmitted: adicionaTarefa
              ),
            ),
            Expanded(child:  ListView.builder(
              itemCount: tarefas.lenght,
              itemBuilder: (_, indice) {
                return getItem(tarefas[indice]);
              },
              )
            ) 
          ],
        ),
      );
  }
}




