import 'dart:math'; // Importa para gerar números aleatórios
import 'package:flutter/material.dart';

/// Classe que representa um estudante com:
/// - id: identificador único (int)
/// - nome: nome do estudante (String)
/// - media: média final (double)
class Estudante {
  final int id;
  final String nome;
  final double media;

  Estudante(this.id, this.nome, this.media);

  /// Verifica se o estudante está aprovado com base na nota de corte (6.0)
  bool get esta_aprovado => media >= 6.0;
}

/// Função principal que inicia a aplicação Flutter
void main() {
  runApp(const app_estudantes());
}

/// Widget principal que define a aplicação
/// StatefulWidget para permitir interações e mudanças de estado
class app_estudantes extends StatefulWidget {
  const app_estudantes({super.key});

  @override
  State<app_estudantes> createState() => _app_estudantes_state();
}

/// Classe de estado da aplicação, onde a lista de estudantes será manipulada
class _app_estudantes_state extends State<app_estudantes> {
  final Random _random = Random(); // Instância para gerar médias aleatórias

  /// Lista que armazena os estudantes atualmente exibidos
  final List<Estudante> _estudantes = [
    Estudante(1, 'Armandinho', 7.5),
    Estudante(2, 'Cristiano Ronaldo', 5.9),
    Estudante(3, 'Heitor', 8.2),
    Estudante(4, 'Lucyo', 6.0),
    Estudante(5, 'Maria', 4.7),
  ];

  /// Controla o próximo ID para novos estudantes adicionados
  int _proximo_id = 6;

  /// Função chamada ao pressionar o botão flutuante
  /// Adiciona um novo estudante com nome e média gerada aleatoriamente entre 0.0 e 10.0
  void _adicionar_estudante() {
    setState(() {
      // Gera média aleatória entre 0.0 e 10.0 com 1 casa decimal
      double media_aleatoria = double.parse(
        (_random.nextDouble() * 10).toStringAsFixed(1),
      );

      // Adiciona novo estudante na lista com id único, nome padrão e média aleatória
      _estudantes.add(
        Estudante(_proximo_id, 'Novo Aluno $_proximo_id', media_aleatoria),
      );

      _proximo_id++; // Incrementa o ID para o próximo aluno
    });
  }

  /// Constrói a interface da aplicação
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciador de Estudantes',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Estudantes'),
          centerTitle: true,
        ),

        /// Lista que exibe todos os estudantes utilizando ListView.builder
        body: ListView.builder(
          itemCount: _estudantes.length,
          itemBuilder: (context, index) {
            final estudante = _estudantes[index];

            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                /// Ícone indicando se o aluno está aprovado ou reprovado
                leading: Icon(
                  estudante.esta_aprovado ? Icons.check_circle : Icons.cancel,
                  color: estudante.esta_aprovado
                      ? Colors.green
                      : Colors.redAccent,
                ),

                /// Nome do estudante
                title: Text(estudante.nome),

                /// Média do estudante (formatada com 1 casa decimal)
                subtitle: Text('Média: ${estudante.media.toStringAsFixed(1)}'),

                /// Status de aprovação no canto direito
                trailing: Text(
                  estudante.esta_aprovado ? 'Aprovado' : 'Reprovado',
                  style: TextStyle(
                    color: estudante.esta_aprovado
                        ? Colors.green
                        : Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),

        /// Botão flutuante que permite adicionar um novo estudante à lista
        floatingActionButton: FloatingActionButton(
          onPressed: _adicionar_estudante,
          tooltip: 'Adicionar Estudante',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
