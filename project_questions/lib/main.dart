import 'package:flutter/material.dart';
import 'package:project_questions/questao.dart';
import 'package:project_questions/questionario.dart';
import 'package:project_questions/resposta.dart';

void main() {
  runApp(QuestionsApp());
}

class QuestionsApp extends StatefulWidget {
  @override
  State<QuestionsApp> createState() => _QuestionsAppState();
}

class _QuestionsAppState extends State<QuestionsApp> {
  var perguntaSelecionada = 0;
  final questions = [
    {
      'pergunta': 'Qual é a capital do Brasil?',
      'respostas': ['Brasília', 'Rio de Janeiro', 'São Paulo', 'Salvador'],
    },
    {
      'pergunta': 'Qual é a capital da França?',
      'respostas': ['Paris', 'Londres', 'Berlim', 'Madri'],
    },
    {
      'pergunta': 'Qual é a capital da Alemanha?',
      'respostas': ['Berlim', 'Viena', 'Zurique', 'Bruxelas'],
    },
    {
      'pergunta': 'Qual é a capital da Itália?',
      'respostas': ['Roma', 'Milão', 'Nápoles', 'Florença'],
    },
    {
      'pergunta': 'Qual é a capital da Espanha?',
      'respostas': ['Madri', 'Barcelona', 'Sevilha', 'Valência'],
    },
  ];
  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Questions App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Questions'), centerTitle: true),
        body:
            temPerguntaSelecionada
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Questao(
                      questions[perguntaSelecionada]['pergunta'] as String,
                    ),
                    const SizedBox(height: 20),
                    ...(questions[perguntaSelecionada]['respostas']
                            as List<String>)
                        .map((resposta) {
                          return Resposta(
                            responder: responder,
                            resposta: resposta,
                          );
                        })
                        .toList(),
                  ],
                )
                : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Parabéns!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Resposta(
                        responder: () {
                          setState(() {
                            perguntaSelecionada = 0;
                          });
                        },
                        resposta: 'Reiniciar',
                      ),
                    ],
                  ),
                ),
      ),
    );
  }
}
