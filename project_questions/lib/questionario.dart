import 'package:flutter/material.dart';
import 'package:project_questions/questao.dart';
import 'package:project_questions/button_responder.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Questao(perguntas[perguntaSelecionada]['pergunta'] as String),
        const SizedBox(height: 20),
        ...(perguntas[perguntaSelecionada]['respostas']
                as List<Map<String, Object>>)
            .map((resposta) {
              return ButtonResponder(
                responder:
                    () => responder(int.parse(resposta['pontos'].toString())),
                resposta: resposta['texto'] as String,
              );
            }),
      ],
    );
  }
}
