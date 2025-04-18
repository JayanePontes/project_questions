import 'package:flutter/material.dart';

class Pontuacao extends StatelessWidget {
  const Pontuacao({required this.pontuacao, super.key});

  final int pontuacao;

  String textPontuacao(int pontuacao) {
    if (pontuacao == 0) {
      return 'Você não respondeu nada!';
    } else if (pontuacao >= 380) {
      return ' Parabéns! \n Você é um gênio!';
    } else if (pontuacao >= 280) {
      return ' Parabéns! \n Você é um expert!';
    } else if (pontuacao >= 180) {
      return ' Parabéns! \n Você é bom!';
    } else if (pontuacao >= 80) {
      return ' Parabéns por finalizar, \n mas você foi mediano!';
    } else {
      return 'Você precisa estudar mais!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textPontuacao(pontuacao),
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.blue,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
