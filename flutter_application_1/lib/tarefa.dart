// ignore_for_file: unnecessary_new, prefer_initializing_formals

class Tarefa {
  String nome;
  DateTime data;
  bool concluida;
  
 Tarefa(String nome) {
    this.nome=nome;
    this.data=DateTime.now();
    this.concluida=false;
  }
}


// Task t= new Task ('Estudar Html5');
