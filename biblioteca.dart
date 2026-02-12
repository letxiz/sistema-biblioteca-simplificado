import 'livro.dart';
import 'pessoa.dart';

class Biblioteca {
  // composição → biblioteca TEM vários livros
  List<Livro> _livros = [];

  // -------------------------
  // adicionar livro
  // -------------------------
  void adicionarLivro(Livro livro) {
    _livros.add(livro);
    print('Livro ${livro.titulo} adicionado na biblioteca.');
  }

  // -------------------------
  // buscar por título
  // -------------------------
  Livro? buscarPorTitulo(String titulo) {
    for (var livro in _livros) {
      if (livro.titulo.toLowerCase() == titulo.toLowerCase()) {
        return livro;
      }
    }
    return null;
  }

  // -------------------------
  // listar disponíveis
  // -------------------------
  void listarDisponiveis() {
    print('\nLivros disponíveis:');

    for (var livro in _livros) {
      if (!livro.estaEmprestado) {
        print('${livro.titulo} - ${livro.autor}');
      }
    }
  }

  // -------------------------
  // emprestar livro para pessoa
  // -------------------------
  void emprestarLivro(String titulo, Pessoa pessoa) {
    var livro = buscarPorTitulo(titulo);

    if (livro == null) {
      print('Livro não encontrado.');
      return;
    }

    pessoa.pegarLivro(livro);
  }

  // -------------------------
  // receber devolução
  // -------------------------
  void receberDevolucao(Pessoa pessoa) {
    pessoa.devolverLivro();
  }
}
