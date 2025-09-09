class Estudante {
  int id;
  String nome;
  double media;

  // Construtor da classe Estudante
  Estudante({required this.id, required this.nome, required this.media});
}

void main() {
  // Lista de estudantes com dados de exemplo
  List<Estudante> estudantes = [
    Estudante(id: 1, nome: "João", media: 7.5),
    Estudante(id: 2, nome: "Maria", media: 8.9),
    Estudante(id: 3, nome: "Pedro", media: 5.0),
    Estudante(id: 4, nome: "Ana", media: 6.3),
    Estudante(id: 5, nome: "Lucas", media: 9.2),
  ];

  // Laço de repetição para iterar sobre a lista de estudantes
  for (var estudante in estudantes) {
    // Condicional para verificar se a média é abaixo da nota de corte (7.0)
    if (estudante.media < 7.0) {
      print("Estudante ${estudante.nome} (ID: ${estudante.id}) está reprovado com média ${estudante.media}");
    } else {
      print("Estudante ${estudante.nome} (ID: ${estudante.id}) está aprovado com média ${estudante.media}");
    }
  }
}