import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  String limite = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Você clicou $contador vezes'),
              Text(limite),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
              setState(() {
                if (contador < 10) {
                  contador++;
                  if (contador == 10){
                    limite = 'Você atingiu o limite';
                  }
                } 
              });
            
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
