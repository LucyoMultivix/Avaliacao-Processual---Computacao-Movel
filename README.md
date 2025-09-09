# Avaliação Processual - Aplicação Flutter

## 📌 Visão Geral

Este projeto foi proposto para a atividade processual da matéria de Computação Móvel, onde uma lógica desenvolvida em Dart para console foi adaptada para uma **aplicação Flutter com interface visual e interativa**.

A aplicação exibe, em uma página web (via navegador), uma lista de estudantes com suas médias e o status de aprovação, utilizando os recursos básicos da interface Flutter.

---

## 📦 Classe e Atributos

A classe `Estudante` modela um estudante com os seguintes atributos:

- **id** (`int`): identificador único do estudante.
- **nome** (`String`): nome do estudante.
- **media** (`double`): média final do estudante.

Além disso:

- A classe contém uma **lista estática interna** que armazena todas as instâncias criadas.
- A nota de corte (6.0) é definida como constante da própria classe.
- A criação de cada estudante automaticamente o adiciona à lista interna.
- O método `esta_aprovado()` define se o estudante passou ou não.

---

## 🔁 Lógica Implementada

- Cinco estudantes são criados no início da aplicação.
- A lista interna da classe `Estudante` armazena todos os estudantes.
- A interface Flutter acessa essa lista e exibe os dados.
- Para cada estudante, a UI mostra:
  - Nome
  - Média formatada
  - Ícone visual indicando aprovação (`check_circle`) ou reprovação (`cancel`).

- A aplicação é interativa, permitindo que o usuário adicione um novo estudante por meio do botão flutuante.
- Ao pressionar o botão **Adicionar Estudante**, um novo estudante é criado automaticamente.
- O nome do novo estudante é gerado no formato "Aluno X", onde X é o próximo número sequencial.
- A média do novo estudante é gerada aleatoriamente, simulando variação de notas reais.
- Após adicionar o estudante, a interface é atualizada automaticamente para mostrar o novo aluno na lista.

Toda a lógica de dados está separada da interface, seguindo boas práticas de organização.

---

## 🖼️ Interface Flutter

A interface foi criada com os seguintes widgets:

- `StatefulWidget`: para permitir a atualização da interface quando novos estudantes são adicionados.
- `Scaffold` e `AppBar`: fornecem estrutura visual básica e título da aplicação.
- `ListView.builder`: exibe a lista de estudantes dinamicamente.
- `ListTile` com ícones: mostra o nome, média e status visual (aprovado/reprovado) de cada estudante.
- `FloatingActionButton`: permite a adição interativa de novos estudantes com médias aleatórias.

![Tela da aplicação](parte_3.png)

---

## 💻 Ferramentas e Ambiente Utilizados

- **Visual Studio Code (VS Code)** como editor principal.
- **Flutter SDK & Dart SDK** devidamente instalados.
- A aplicação foi executada via **Chrome (navegador)** utilizando:

flutter run

Em seguida escolhemos a opção de device navegador (Nós usamos navegador para testar porque o Android Studio não fazia nenhum emulador compatível e o Windows também não queria rodar).

---

## ▶️ Instruções de Execução

1. **Crie um novo projeto Flutter**:

Abra o terminal e digite:

flutter create nome_do_projeto

2. **Substitua o arquivo `main.dart` gerado**:

Navegue até o diretório do projeto:

cd nome_do_projeto

Em seguida, abra a pasta `lib` e substitua o conteúdo do arquivo `main.dart` por este que foi fornecido no repositório.

3. **Execute o projeto Flutter**:

No terminal, dentro da raiz do projeto, execute:

flutter run


O terminal irá listar os dispositivos disponíveis. Escolha o número correspondente ao navegador (ex: Chrome) ou outro dispositivo da sua preferência.
