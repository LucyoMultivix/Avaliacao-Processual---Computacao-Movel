import 'package:flutter/material.dart';

// Classe Estudante
class Estudante {
  int id;
  String nome;
  double media;

  Estudante({required this.id, required this.nome, required this.media});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciamento de Estudantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EstudantesScreen(),
    );
  }
}

class EstudantesScreen extends StatelessWidget {
  // Lista de estudantes com dados de exemplo
  final List<Estudante> estudantes = [
    Estudante(id: 1, nome: "João", media: 7.5),
    Estudante(id: 2, nome: "Maria", media: 8.9),
    Estudante(id: 3, nome: "Pedro", media: 5.0),
    Estudante(id: 4, nome: "Ana", media: 6.3),
    Estudante(id: 5, nome: "Lucas", media: 9.2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estudantes'),
      ),
      body: ListView.builder(
        itemCount: estudantes.length,
        itemBuilder: (context, index) {
          final estudante = estudantes[index];
          // Verificando se o estudante está aprovado ou reprovado
          String status = estudante.media >= 7.0 ? "Aprovado" : "Reprovado";
          Color statusColor = estudante.media >= 7.0 ? Colors.green : Colors.red;
          
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              contentPadding: EdgeInsets.all(15),
              title: Text(
                "${estudante.nome} (ID: ${estudante.id})",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Média: ${estudante.media.toStringAsFixed(1)}"),
              trailing: Icon(
                status == "Aprovado" ? Icons.check_circle : Icons.cancel,
                color: statusColor,
              ),
            ),
          );
        },
      ),
    );
  }
}
