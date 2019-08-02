import 'package:flutter/material.dart';

import 'confirmar-agenda.dart';

class AgendamentoPage extends StatefulWidget {
  @override
  _AgendamentoPageState createState() => _AgendamentoPageState();
}

class _AgendamentoPageState extends State<AgendamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png',
          scale: 30,
        ),
        centerTitle: true,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Center(
            child: Text("teste"),
          ),
        ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Tela confirmar agendamento"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ConfirmarAgendamento()));
          },
        ),
      ),
    );
  }
}
