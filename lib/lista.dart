import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class ListaScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text("@Jogadores Brasileirão"),
      ), // appBar

      body: ListView.builder(

        itemCount: 21,
        itemBuilder: (ctxt, index) {

          return ListTile(
            leading: Icon(Icons.person),
            title: Text("Jogador ${index}"),
            subtitle: Text("Clube : Fluminense"),
            trailing: Icon(Icons.delete),



          );


        }


      ),
      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
        onPressed: (){

        Navigator.pushNamed(context, '/cadastro');
        }

      ),
    );
  }
}