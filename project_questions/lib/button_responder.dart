import 'package:flutter/material.dart';

class ButtonResponder extends StatefulWidget {
  const ButtonResponder({
    required this.responder,
    required this.resposta,
    super.key,
  });

  final Function() responder;
  final String resposta;

  @override
  State<ButtonResponder> createState() => _ButtonResponderState();
}

class _ButtonResponderState extends State<ButtonResponder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: ElevatedButton(
        onPressed: widget.responder,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.blueAccent),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          padding: WidgetStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
          ),
          textStyle: WidgetStateProperty.all<TextStyle>(
            const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          overlayColor: WidgetStateProperty.all<Color>(
            const Color.fromARGB(255, 184, 213, 236).withOpacity(0.2),
          ),
        ),
        child: Text(widget.resposta),
      ),
    );
  }
}
