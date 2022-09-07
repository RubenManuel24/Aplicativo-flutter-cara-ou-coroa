import 'dart:math';

import 'package:app_cara_ou_coroa/tela_secundaria.dart';
import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  List escolha = ["cara","coroa"];
  
   void jogar(){
    var numero = Random().nextInt(escolha.length);
    var resultado = escolha[numero];
    
      Navigator.push(
        context, 
        MaterialPageRoute(builder: ((context) => (TelaSecudaria(resultado)) )
        ));
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset("imagem/logo.png",
          ),
          Padding(padding: EdgeInsets.only(top: 25), 
          child:
          GestureDetector(
            onTap: () => jogar(),
            child: Image.asset("imagem/botao_jogar.png"),
          ) )
        ],),
      ),
    );
  }
}