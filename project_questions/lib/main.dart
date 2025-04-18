import 'package:flutter/material.dart';
import 'package:project_questions/questionario.dart';
import 'package:project_questions/resultado.dart';

void main() {
  runApp(QuestionsApp());
}

class QuestionsApp extends StatefulWidget {
  @override
  State<QuestionsApp> createState() => _QuestionsAppState();
}

class _QuestionsAppState extends State<QuestionsApp> {
  var perguntaSelecionada = 0;
  int pontuacao = 0;

  final questions = [
    {
      'pergunta': 'Qual é a capital do Brasil?',
      'respostas': [
        {'texto': 'São Paulo', 'correto': false, 'pontos': 0},
        {'texto': 'Rio de Janeiro', 'correto': false, 'pontos': 0},
        {'texto': 'Salvador', 'correto': false, 'pontos': 0},
        {'texto': 'Brasília', 'correto': true, 'pontos': 10},
      ],
    },
    {
      'pergunta': 'Qual é a capital da França?',
      'respostas': [
        {'texto': 'Londres', 'correto': false, 'pontos': 0},
        {'texto': 'Berlim', 'correto': false, 'pontos': 0},
        {'texto': 'Paris', 'correto': true, 'pontos': 10},
        {'texto': 'Madri', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Alemanha?',
      'respostas': [
        {'texto': 'Berlim', 'correto': true, 'pontos': 10},
        {'texto': 'Munique', 'correto': false, 'pontos': 0},
        {'texto': 'Frankfurt', 'correto': false, 'pontos': 0},
        {'texto': 'Hamburgo', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Itália?',
      'respostas': [
        {'texto': 'Veneza', 'correto': false, 'pontos': 0},
        {'texto': 'Roma', 'correto': true, 'pontos': 10},
        {'texto': 'Milão', 'correto': false, 'pontos': 0},
        {'texto': 'Nápoles', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Espanha?',
      'respostas': [
        {'texto': 'Barcelona', 'correto': false, 'pontos': 0},
        {'texto': 'Valência', 'correto': false, 'pontos': 0},
        {'texto': 'Madri', 'correto': true, 'pontos': 10},
        {'texto': 'Sevilha', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do Reino Unido?',
      'respostas': [
        {'texto': 'Londres', 'correto': true, 'pontos': 10},
        {'texto': 'Edimburgo', 'correto': false, 'pontos': 0},
        {'texto': 'Cardiff', 'correto': false, 'pontos': 0},
        {'texto': 'Belfast', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da China?',
      'respostas': [
        {'texto': 'Pequim', 'correto': true, 'pontos': 10},
        {'texto': 'Xangai', 'correto': false, 'pontos': 0},
        {'texto': 'Hong Kong', 'correto': false, 'pontos': 0},
        {'texto': 'Taipei', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da India?',
      'respostas': [
        {'texto': 'Jaipur', 'correto': false, 'pontos': 0},
        {'texto': 'Nova Délhi', 'correto': true, 'pontos': 10},
        {'texto': 'Mumbai', 'correto': false, 'pontos': 0},
        {'texto': 'Jaisalmer', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do Afeganistão?',
      'respostas': [
        {'texto': 'Cabul', 'correto': true, 'pontos': 10},
        {'texto': 'Kandahar', 'correto': false, 'pontos': 0},
        {'texto': 'Herat', 'correto': false, 'pontos': 0},
        {'texto': 'Mazar-i-Sharif', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da África do Sul?',
      'respostas': [
        {'texto': 'Pretória', 'correto': true, 'pontos': 10},
        {'texto': 'Cidade do Cabo', 'correto': false, 'pontos': 0},
        {'texto': 'Joanesburgo', 'correto': false, 'pontos': 0},
        {'texto': 'Durban', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do Japão?',
      'respostas': [
        {'texto': 'Tóquio', 'correto': true, 'pontos': 10},
        {'texto': 'Kyoto', 'correto': false, 'pontos': 0},
        {'texto': 'Osaka', 'correto': false, 'pontos': 0},
        {'texto': 'Hiroshima', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do Canadá?',
      'respostas': [
        {'texto': 'Toronto', 'correto': false, 'pontos': 0},
        {'texto': 'Vancouver', 'correto': false, 'pontos': 0},
        {'texto': 'Ottawa', 'correto': true, 'pontos': 10},
        {'texto': 'Montreal', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Austrália?',
      'respostas': [
        {'texto': 'Sydney', 'correto': false, 'pontos': 0},
        {'texto': 'Melbourne', 'correto': false, 'pontos': 0},
        {'texto': 'Camberra', 'correto': true, 'pontos': 10},
        {'texto': 'Brisbane', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Rússia?',
      'respostas': [
        {'texto': 'Moscovo', 'correto': true, 'pontos': 10},
        {'texto': 'São Petersburgo', 'correto': false, 'pontos': 0},
        {'texto': 'Novosibirsk', 'correto': false, 'pontos': 0},
        {'texto': 'Ecaterimburgo', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Argentina?',
      'respostas': [
        {'texto': 'Buenos Aires', 'correto': true, 'pontos': 10},
        {'texto': 'Córdoba', 'correto': false, 'pontos': 0},
        {'texto': 'Rosário', 'correto': false, 'pontos': 0},
        {'texto': 'La Plata', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do Egito?',
      'respostas': [
        {'texto': 'Cairo', 'correto': true, 'pontos': 10},
        {'texto': 'Alexandria', 'correto': false, 'pontos': 0},
        {'texto': 'Giza', 'correto': false, 'pontos': 0},
        {'texto': 'Luxor', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Turquia?',
      'respostas': [
        {'texto': 'Istambul', 'correto': false, 'pontos': 0},
        {'texto': 'Ankara', 'correto': true, 'pontos': 10},
        {'texto': 'Izmir', 'correto': false, 'pontos': 0},
        {'texto': 'Antália', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Grécia?',
      'respostas': [
        {'texto': 'Atenas', 'correto': true, 'pontos': 10},
        {'texto': 'Salónica', 'correto': false, 'pontos': 0},
        {'texto': 'Patras', 'correto': false, 'pontos': 0},
        {'texto': 'Heraclião', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Suécia?',
      'respostas': [
        {'texto': 'Estocolmo', 'correto': true, 'pontos': 10},
        {'texto': 'Gotemburgo', 'correto': false, 'pontos': 0},
        {'texto': 'Malmö', 'correto': false, 'pontos': 0},
        {'texto': 'Uppsala', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Noruega?',
      'respostas': [
        {'texto': 'Oslo', 'correto': true, 'pontos': 10},
        {'texto': 'Bergen', 'correto': false, 'pontos': 0},
        {'texto': 'Stavanger', 'correto': false, 'pontos': 0},
        {'texto': 'Drammen', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Dinamarca?',
      'respostas': [
        {'texto': 'Copenhague', 'correto': true, 'pontos': 10},
        {'texto': 'Aarhus', 'correto': false, 'pontos': 0},
        {'texto': 'Odense', 'correto': false, 'pontos': 0},
        {'texto': 'Aalborg', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Finlândia?',
      'respostas': [
        {'texto': 'Helsinque', 'correto': true, 'pontos': 10},
        {'texto': 'Tampere', 'correto': false, 'pontos': 0},
        {'texto': 'Oulu', 'correto': false, 'pontos': 0},
        {'texto': 'Espoo', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Islândia?',
      'respostas': [
        {'texto': 'Reiquiavique', 'correto': true, 'pontos': 10},
        {'texto': 'Akureyri', 'correto': false, 'pontos': 0},
        {'texto': 'Kopavogur', 'correto': false, 'pontos': 0},
        {'texto': 'Hafnarfjordur', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Polônia?',
      'respostas': [
        {'texto': 'Varsóvia', 'correto': true, 'pontos': 10},
        {'texto': 'Cracóvia', 'correto': false, 'pontos': 0},
        {'texto': 'Gdansk', 'correto': false, 'pontos': 0},
        {'texto': 'Wroclaw', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Hungria?',
      'respostas': [
        {'texto': 'Budapeste', 'correto': true, 'pontos': 10},
        {'texto': 'Debrecen', 'correto': false, 'pontos': 0},
        {'texto': 'Szeged', 'correto': false, 'pontos': 0},
        {'texto': 'Miskolc', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da República Tcheca?',
      'respostas': [
        {'texto': 'Praga', 'correto': true, 'pontos': 10},
        {'texto': 'Brno', 'correto': false, 'pontos': 0},
        {'texto': 'Ostrava', 'correto': false, 'pontos': 0},
        {'texto': 'Plzeň', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Áustria?',
      'respostas': [
        {'texto': 'Viena', 'correto': true, 'pontos': 10},
        {'texto': 'Graz', 'correto': false, 'pontos': 0},
        {'texto': 'Salzburgo', 'correto': false, 'pontos': 0},
        {'texto': 'Innsbruck', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Suíça?',
      'respostas': [
        {'texto': 'Berna', 'correto': true, 'pontos': 10},
        {'texto': 'Zurique', 'correto': false, 'pontos': 0},
        {'texto': 'Genebra', 'correto': false, 'pontos': 0},
        {'texto': 'Basileia', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Bélgica?',
      'respostas': [
        {'texto': 'Bruxelas', 'correto': true, 'pontos': 10},
        {'texto': 'Antuérpia', 'correto': false, 'pontos': 0},
        {'texto': 'Gante', 'correto': false, 'pontos': 0},
        {'texto': 'Bruges', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Holanda?',
      'respostas': [
        {'texto': 'Amsterdã', 'correto': true, 'pontos': 10},
        {'texto': 'Roterdã', 'correto': false, 'pontos': 0},
        {'texto': 'Haia', 'correto': false, 'pontos': 0},
        {'texto': 'Utrecht', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Irlanda?',
      'respostas': [
        {'texto': 'Dublin', 'correto': true, 'pontos': 10},
        {'texto': 'Cork', 'correto': false, 'pontos': 0},
        {'texto': 'Limerick', 'correto': false, 'pontos': 0},
        {'texto': 'Galway', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Nova Zelândia?',
      'respostas': [
        {'texto': 'Wellington', 'correto': true, 'pontos': 10},
        {'texto': 'Auckland', 'correto': false, 'pontos': 0},
        {'texto': 'Christchurch', 'correto': false, 'pontos': 0},
        {'texto': 'Hamilton', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Coreia do Sul?',
      'respostas': [
        {'texto': 'Seul', 'correto': true, 'pontos': 10},
        {'texto': 'Busan', 'correto': false, 'pontos': 0},
        {'texto': 'Incheon', 'correto': false, 'pontos': 0},
        {'texto': 'Suwon', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital da Tailândia?',
      'respostas': [
        {'texto': 'Banguecoque', 'correto': true, 'pontos': 10},
        {'texto': 'Chiang Mai', 'correto': false, 'pontos': 0},
        {'texto': 'Pattaya', 'correto': false, 'pontos': 0},
        {'texto': 'Phuket', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do Vietnã?',
      'respostas': [
        {'texto': 'Hanói', 'correto': true, 'pontos': 10},
        {'texto': 'Ho Chi Minh', 'correto': false, 'pontos': 0},
        {'texto': 'Da Nang', 'correto': false, 'pontos': 0},
        {'texto': 'Nha Trang', 'correto': false, 'pontos': 0},
      ],
    },
    {
      'pergunta': 'Qual é a capital do México?',
      'respostas': [
        {'texto': 'Cidade do México', 'correto': true, 'pontos': 10},
        {'texto': 'Guadalajara', 'correto': false, 'pontos': 0},
        {'texto': 'Monterrey', 'correto': false, 'pontos': 0},
        {'texto': 'Cancún', 'correto': false, 'pontos': 0},
      ],
    },
  ];

  void responder(int pontos) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacao += pontos;
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
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Mestre das Capitais',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body:
            temPerguntaSelecionada
                ? Questionario(
                  perguntaSelecionada: perguntaSelecionada,
                  perguntas: questions,
                  responder: responder,
                )
                : Resultado(
                  perguntaSelecionada: perguntaSelecionada,
                  pontuacao: pontuacao,
                ),
      ),
    );
  }
}
