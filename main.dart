import 'livro.dart';
import 'pessoa.dart';
import 'biblioteca.dart';

void main() {

  // criar biblioteca
  var biblioteca = Biblioteca();

  // criar livros
  var l1 = Livro("Dart Básico", "Autor A", 2023);
  var l2 = Livro("POO na Prática", "Autor B", 2022);
  var l3 = Livro("Java", "Autor C", 2019);
  var l4 = Livro("React-native", "Autor D", 2021);


  // adicionar livros
  biblioteca.adicionarLivro(l1);
  biblioteca.adicionarLivro(l2);
  biblioteca.adicionarLivro(l3);
  biblioteca.adicionarLivro(l4);
  // criar pessoas
  var pessoa1 = Pessoa(nome: "Leticia", telefone: "(78) 47862-3637");
  var pessoa2 = Pessoa(nome: "Pedro", telefone: "(98) 44156-8965");

  print('\n=== Livros cadastrados ===');
  print('${l1.titulo} - ${l1.autor} (${l1.ano})');
  print('${l2.titulo} - ${l2.autor} (${l2.ano})');
  print('${l3.titulo} - ${l3.autor} (${l3.ano})');
  print('${l4.titulo} - ${l4.autor} (${l4.ano})');

  print('\n=== Disponíveis antes do empréstimo ===');
  biblioteca.listarDisponiveis();

  print('\n=== Empréstimos ===');
  biblioteca.emprestarLivro("Dart Básico", pessoa1);
  biblioteca.emprestarLivro("POO na Prática", pessoa2);

  print('\n=== Disponíveis após empréstimo ===');
  biblioteca.listarDisponiveis();

  print('\n=== Devoluções ===');
  biblioteca.receberDevolucao(pessoa1);
  biblioteca.receberDevolucao(pessoa2);

  print('\n=== Disponíveis após devolução ===');
  biblioteca.listarDisponiveis();
}
