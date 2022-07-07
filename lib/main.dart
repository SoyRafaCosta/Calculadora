import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: CalculadoraRafa(),
    );
  }
}

// ignore: must_be_immutable
class CalculadoraRafa extends StatelessWidget {
  CalculadoraRafa({Key? key}) : super(key: key);
  int num1 = 0;
  int num2 = 0;
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora do Rafa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 100,
            width: 600,
            margin:
                const EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 30),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 50, left: 50, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  botaoCalculadora('7'),
                  botaoCalculadora('8'),
                  botaoCalculadora('9'),
                  botaoCalculadora('/'),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(right: 50, left: 50, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  botaoCalculadora('4'),
                  botaoCalculadora('5'),
                  botaoCalculadora('6'),
                  botaoCalculadora('*'),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(right: 50, left: 50, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  botaoCalculadora('1'),
                  botaoCalculadora('2'),
                  botaoCalculadora('3'),
                  botaoCalculadora('-'),
                ]),
          ),
          Container(
            margin: const EdgeInsets.only(right: 50, left: 50, bottom: 150),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  botaoCalculadora('C'),
                  botaoCalculadora('0'),
                  botaoCalculadora('='),
                  botaoCalculadora('+'),
                ]),
          ),
        ],
      ),
    );
  }

  ElevatedButton botaoCalculadora(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(25)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ))),
      child: Text(text),
    );
  }
}
