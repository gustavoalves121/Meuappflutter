import 'package:flutter/material.dart';

class NovoScreen extends StatefulWidget {

  @override
  State<NovoScreen> createState() => _NovoScreenState();
}

class _NovoScreenState extends State<NovoScreen> {

  String _texto = 'Salvar';
  String _nome = '';
  String _clube = '';

  void pressionaSalvar(BuildContext context) {

    print("${_nome} : ${_clube}");
    Navigator.pop(context);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Jogador"),
      ),
      body: Column(
        children: [
          TextField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(labelText: "Nome"),
            keyboardType: TextInputType.name,
            onChanged: (text) => setState(() => _nome = text),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Clube"),
            keyboardType: TextInputType.phone,
            onChanged: (text) => setState(() => _clube = text),
          ),
          TextButton(child: Text(_texto),
              onPressed: () {pressionaSalvar (context); },
          ),
          ],
      ),
    );
  }
}
