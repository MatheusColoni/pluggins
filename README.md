# pluggins

> Projeto de estudo em Flutter sobre integração com APIs REST e consumo de dados em formato JSON.

## Sobre o projeto

Este projeto foi desenvolvido com o objetivo de aprender, na prática, como uma aplicação Flutter se comunica com serviços externos via HTTP, faz parsing de respostas JSON e converte esses dados em objetos Dart (e vice-versa).

A API utilizada como base de testes foi a [DummyJSON](https://dummyjson.com), que disponibiliza endpoints públicos com dados fictícios em formato JSON.

## Funcionalidades

- Requisição HTTP GET para o endpoint `/todos/1` da DummyJSON.
- Desserialização da resposta JSON em um objeto Dart (`User.fromJson`).
- Serialização do objeto Dart de volta para JSON (`User.toJson`).
- Exibição do retorno no console via `debugPrint`.

Tecnologias e pacotes

- **Flutter** (SDK)
- **Dart**
- [`http`](https://pub.dev/packages/http) — cliente HTTP para requisições à API
- [`dart:convert`](https://api.dart.dev/dart-convert/dart-convert-library.html) — codificação/decodificação de JSON

## Como executar

### Pré-requisitos

- Flutter SDK instalado ([guia oficial](https://docs.flutter.dev/get-started/install))
- Um emulador, dispositivo físico ou suporte a desktop (Windows/Linux/macOS) configurado

### Passos

```bash
# Clone o repositório
git clone https://github.com/<seu-usuario>/pluggins.git

# Entre na pasta do projeto
cd pluggins

# Instale as dependências
flutter pub get

# Execute o app
flutter run
```

Ao abrir o app, clique no botão flutuante **+** para disparar a requisição. O resultado aparece no Debug Console.

## Exemplo de retorno da API

```json
{
  "id": 1,
  "todo": "Do something nice for someone you care about",
  "completed": false,
  "userId": 152
}
```
