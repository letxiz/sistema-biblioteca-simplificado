class Livro{
  String _titulo;
  String _autor;
  int _ano;
  bool _estaEmprestado = false;

  Livro(this._titulo, this._autor, this._ano);
  

  String get titulo => _titulo;
  String get autor => _autor;
  int get ano => _ano;
  bool get estaEmprestado => _estaEmprestado;

  void emprestar(){
    if(_estaEmprestado == false){
      _estaEmprestado = true;
      print('O livro ${_titulo} foi emprestado.');
    }else{
      print('O livro ${_titulo} já foi emprestado.');
    }
  }
  void devolver(){
     if (_estaEmprestado == true) {
      _estaEmprestado = false;
      print("O livro '$_titulo' foi devolvido.");
    } else {
      print("O livro ${_titulo} não estava emprestado.");
    }
  }
}