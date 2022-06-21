import 'package:flutter/material.dart';

class MenuServico extends StatefulWidget {
  const MenuServico({Key? key}) : super(key: key);

  @override
  State<MenuServico> createState() => _MenuServicoState();
}

class _MenuServicoState extends State<MenuServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 173, 2),
        title: Text("Bem vindo(a) à tela de Serviços!",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
        ),),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(36),
            child: 
            Text("Como podemos ajudar?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),),
          ),

          Padding(
            padding: EdgeInsets.all(36),
            child: Text("Você é o amor da minha vida, i lovi u ❤️!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),),
          )
        ],
      ),
    );
  }
}
