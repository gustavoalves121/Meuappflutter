import 'package:flutter/material.dart';
import 'lista.dart';


class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/logobrasileirao.png", height: 90, width: 90),
            Text(
              "Brasileirão Login",

              style: TextStyle(

                  fontWeight: FontWeight.bold,
                  fontSize: 30.0

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: TextField(
              keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
               labelText: "E-mail", border: OutlineInputBorder ()),


             ),
              ),

              Padding(

                padding: EdgeInsets.symmetric(vertical: 0 ,horizontal: 8),

              child: TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Senha", border: OutlineInputBorder()),

                obscureText: true,
              ),
            ),


            ElevatedButton(
                child: Text('Entrar'),
                style:ElevatedButton.styleFrom(
                  padding:EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10
                  ),
                ),
                onPressed: (){

                  Navigator.pushReplacementNamed(context, '/lista');

                },
            ),
          ]
        ),
      );

  }
}