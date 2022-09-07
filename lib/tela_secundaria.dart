import 'package:app_cara_ou_coroa/tela_principal.dart';
import 'package:flutter/material.dart';

class TelaSecudaria extends StatefulWidget {

   var valor;

   TelaSecudaria(this.valor);   

  @override
  State<TelaSecudaria> createState() => _TelaSecudariaState();
}
class _TelaSecudariaState extends State<TelaSecudaria> {
   
  void voltar(){
      Navigator.pop(
        context, 
        MaterialPageRoute(builder: ((context) => (TelaPrincipal()) )
        ));
   }
  @override
  Widget build(BuildContext context) {
     var _valorImagem;
     switch(widget.valor){
      case "coroa": _valorImagem = "imagem/moeda_coroa.png";
      break;
      case "cara": _valorImagem = "imagem/moeda_cara.png" ;
      break;
     }

     return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
          Padding(padding: EdgeInsets.only(top:100), 
          child: Image.asset(_valorImagem)
          ),
          Padding(padding: EdgeInsets.only(top: 80, bottom: 20), 
          child:
           GestureDetector(
            onTap: () => voltar(),
            child: Image.asset("imagem/botao_voltar.png"),
          ))
        ],),
      ),

    );
  }
}
