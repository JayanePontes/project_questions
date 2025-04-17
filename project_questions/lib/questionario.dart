import 'package:flutter/material.dart';
import 'package:project_questions/questao.dart';
import 'package:project_questions/resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Questao(perguntas[perguntaSelecionada]['pergunta'] as String),
        const SizedBox(height: 20),
        ...(perguntas[perguntaSelecionada]['respostas'] as List<String>).map((
          resposta,
        ) {
          return Resposta(responder: responder, resposta: resposta);
        }).toList(),
      ],
    );
  }
}
