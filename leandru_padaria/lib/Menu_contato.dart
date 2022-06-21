import 'package:flutter/material.dart';

class MenuContato extends StatefulWidget {
  const MenuContato({Key? key}) : super(key: key);

  @override
  State<MenuContato> createState() => _MenuContatoState();
}

class _MenuContatoState extends State<MenuContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Olá!"),
        
      ),
    );
  }
}
