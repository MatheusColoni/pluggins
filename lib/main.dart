

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
   
   final result = await getUser();
 
   debugPrint(result.id.toString());
  
 final json = result.toJson();

 debugPrint(json.toString());
    
    setState(() {
 _counter++;
    });
  }



Future<User> getUser() async {
  var url = Uri.https('dummyjson.com', '/todos/1');
  
  var response = await http.get(url);

  final map = jsonDecode(response.body);


  final user = User.fromJson(map);

  
return user;
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
     
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

class User {
final int id;
final int userId;
final String todo;
final bool completed;

  User({
    required this.id, 
    required this.userId, 
    required this.todo, 
    required this.completed
    });

factory User.fromJson(Map json){
  return  User(
    id: json['id'],
    userId: json['userId'],
    todo: json['todo'],
    completed: json['completed']);
}


Map toJson(){
  return {
    'id' : id,
    'userId' : userId,
    'todo' : todo,
    'completed' : completed,
    
  };
}



}
