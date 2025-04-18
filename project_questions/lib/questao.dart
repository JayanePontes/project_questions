import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  const Questao(this.perguntas);

  final String perguntas;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Text(
          perguntas,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
