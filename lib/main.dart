import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'login.dart';
import 'lista.dart';
import 'cadastro.dart';


void main() {

  runApp(MeuAppp());
}

class MeuAppp extends StatelessWidget {

@override
  Widget build(BuildContext context) {

  return MaterialApp(


    //debugShowCheckedModeBanner: false,
    title: "Meu Aplicativo",
    theme: ThemeData(primarySwatch: Colors.indigo),
    routes: { '/': (context) => LoginScreen(),
              '/lista': (context) => ListaScreen(),
              '/cadastro': (context) => NovoScreen(),


    },


  );
}

}


