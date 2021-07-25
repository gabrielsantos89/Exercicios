import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title,this.description);
}

void main() {
  runApp(MaterialApp(
    title: 'Passando Dados',
    color: Colors.white,
    home: TodosScreen(
      todos: List.generate(
          6,
              (i) => Todo(
                "Todo $i",
                "Aqui vai uma descrição e/ou conteudo do Todo $i"
              ),
      ),
    ),
  ));
}
class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

   TodosScreen({Key? key, required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usando o Todo com Array"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(todos[index].title),
            onTap: (){
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => DetailScreen(todo: todos[index])
              ),
              );
            },
          );
        }
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;
  DetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Text(todo.description),
    ),
    );
  }
}
