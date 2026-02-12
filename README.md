# 📚 Sistema de Biblioteca — Dart (POO)

Projeto de estudo em **Programação Orientada a Objetos (POO)** utilizando Dart.
O sistema simula o funcionamento básico de uma biblioteca, com cadastro de livros, controle de empréstimo e devolução, além de listagem de disponibilidade.

---

## 📚 Conceitos aplicados

* Programação Orientada a Objetos
* Encapsulamento (atributos privados + getters)
* Construtores
* Composição entre classes
* Controle de estado
* Uso de coleções (`List`)
* Métodos de regra de negócio
* Separação de responsabilidades entre classes

---

## 🧱 Estrutura de Classes

### 📖 Livro

Representa um livro da biblioteca.

**Atributos:**

* título
* autor
* ano
* status de empréstimo

**Métodos:**

* `emprestar()`
* `devolver()`
* getters de acesso
* controle de disponibilidade

---

### 👤 Pessoa

Representa quem pode pegar livros emprestados.

**Atributos:**

* nome
* telefone

**Composição:**

* possui um `Livro` emprestado (opcional)

**Métodos:**

* `pegarLivro()`
* `devolverLivro()`
* verificação de posse
* getters

---

### 🏛️ Biblioteca

Gerencia o acervo.

**Composição:**

* lista de `Livro`

**Métodos:**

* `adicionarLivro()`
* `buscarPorTitulo()`
* `listarDisponiveis()`
* `emprestarLivro()`
* `receberDevolucao()`

---

## ▶️ Execução

O arquivo `main.dart` demonstra:

* criação da biblioteca
* cadastro de livros
* criação de pessoas
* listagem de livros disponíveis
* empréstimo
* devolução
* atualização de disponibilidade

---

## 🎯 Objetivo

Praticar modelagem de classes, composição e interação entre objetos em Dart como base para desenvolvimento orientado a objetos e preparação para Flutter.

---

## 🚀 Status

✅ Projeto concluído para fins de estudo de POO.
