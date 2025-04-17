import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({required this.responder, required this.resposta, super.key});

  final VoidCallback responder;
  final String resposta;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: responder,
      child: Text(resposta),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.blueAccent),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        ),
        textStyle: WidgetStateProperty.all<TextStyle>(
          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
