import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Nem todas as tempestades vêm para atrapalhar a sua vida. Algumas vêm para limpar seu caminho.",
    "A persistência realiza o impossível.",
    "Não se desespere quando a caminhada estiver difícil, é sinal de que você está no caminho certo.",
    "Seus sonhos não precisam de plateia, eles só precisam de você.",
    "A persistência é o caminho do êxito.",
    "As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.",
    "Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.",
    "Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação."
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);

    _fraseGerada = _frases[numeroSorteado];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            // width: double.infinity,
            // decoration: BoxDecoration(
            //     border: Border.all(width: 3, color: Colors.amber)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/img/logo.png"),
                  // ignore: prefer_const_constructors
                  Text(
                    _fraseGerada,
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.black),
                  ),
                  ElevatedButton(
                    child: Text(
                      "Nova Frase",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      setState(() {
                        _gerarFrase();
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.amber),
                  )
                ]),
          ),
        ));
  }
}
