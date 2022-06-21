//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:leandru_padaria/Menu_cliente.dart';
import 'package:leandru_padaria/Menu_contato.dart';
import 'package:leandru_padaria/Menu_servi%C3%A7o.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'Menu_cliente.dart';
/*import 'Menu_contato.dart';
import 'Menu_serviço.dart';*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _abrirCliente() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MenuCliente()));
  }

  void _abrirContatos() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MenuContato()));
  }

  void _abrirServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MenuServico()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 77, 72, 69),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 197, 114, 59),
        title: Text(
          "Bem vindo(a) a Padaria do Leandro!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Image.asset("imagens/logo1.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Row(children: <Widget>[
                GestureDetector(
                  onTap: _abrirCliente,
                  child: Image.asset("imagens/menu_cliente1.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: _abrirContatos,
                  child: Image.asset("imagens/menu_contato1.png"),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40, right: 30, left: 30),
              child: SlideAction(
                onSubmit: _abrirServico,
                elevation: 0,  // é a sombra debaixo do widget
                borderRadius: 12,   // border radius, nem preciso explicar kkkk
                innerColor: Color.fromARGB(255, 77, 72, 69),  // cor do texto interno e da caixinha de slider
                outerColor: Color.fromARGB(255, 197, 114, 59),  // cor da barra de slider
                sliderButtonIcon: Icon(Icons.arrow_forward, 
                  color: Colors.white,),    // ícone estático/inicial e sua cor
                text: "Arraste para ver!", 
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 24,),
                
                
                
                
                
                /*Row(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirServico,
                      child: Image.asset("imagens/menu_servico1.png"),
                    )
                  ]),*/
            )),
          ]),
    );
  }
}
