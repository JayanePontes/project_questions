import 'package:flutter/material.dart';
import 'package:project_questions/pontuacao.dart';
import 'package:project_questions/button_responder.dart';

class Resultado extends StatefulWidget {
  Resultado({
    required this.perguntaSelecionada,
    required this.pontuacao,
    super.key,
  });

  late int perguntaSelecionada;
  final int pontuacao;

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pontuacao(pontuacao: widget.pontuacao),
          const SizedBox(height: 20),
          ButtonResponder(
            responder: () {
              setState(() {
                widget.perguntaSelecionada = 0;
              });
            },
            resposta: 'Reiniciar',
          ),
        ],
      ),
    );
  }
}
