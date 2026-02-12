import 'livro.dart';

class Pessoa {
  String nome;
  String telefone;

  // composição → Pessoa tem um Livro
  Livro? _livro;

  Pessoa({
    required this.nome,
    required this.telefone,
  });

  // getter → retorna o livro emprestado
  Livro? get livro => _livro;

  // verifica se tem livro
  bool get temLivro => _livro != null;

  // método pegar livro
  void pegarLivro(Livro livro) {
    if (_livro != null) {
      print('$nome já possui um livro emprestado.');
      return;
    }

    if (livro.estaEmprestado) {
      print('O livro ${livro.titulo} não está disponível.');
      return;
    }

    livro.emprestar();
    _livro = livro;
    print('$nome pegou o livro ${livro.titulo}.');
  }

  // método devolver livro
  void devolverLivro() {
    if (_livro == null) {
      print('$nome não possui livro para devolver.');
      return;
    }

    _livro!.devolver();
    print('$nome devolveu o livro ${_livro!.titulo}.');
    _livro = null;
  }
}
