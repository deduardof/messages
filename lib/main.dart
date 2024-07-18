import 'package:flutter/material.dart';
import 'package:mensagens/message.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff0f0f0),
        body: Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Message(type: MessageType.info, title: 'Mensagem de info', subtitle: 'Esta é uma mensagem de informação.'),
              Message(type: MessageType.alert, title: 'Mensagem de alerta', subtitle: 'Esta é uma mensagem de alerta.'),
              Message(type: MessageType.success, title: 'Mensagem de sucesso', subtitle: 'Esta é uma mensagem de sucesso.'),
              Message(type: MessageType.error, title: 'Mensagem de erro', subtitle: 'Esta é uma mensagem de erro.'),
              // SuccessMessage(title: 'Mensagem de sucesso', subtitle: 'Este é ma mensagem de sucesso.'),
              // ErrorMessage(title: 'Mensagem de erro', subtitle: 'Este é um erro de teste.'),
            ],
          ),
        ),
      ),
    );
  }
}
