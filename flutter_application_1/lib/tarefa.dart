class Task {
  //atributos
  String nome;
  DateTime data;
  bool concluida;

  // construtor;
  Task(String nome){
    this.nome=nome;
    data=DateTime.now();
    concluida=false;
  }
}

Task t= new Task ('Estudar Html5');
