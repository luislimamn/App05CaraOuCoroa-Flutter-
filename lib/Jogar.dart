import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  var _numero = 0;
  var _resultado = "imagens/moeda_cara.png";
  void _sortearMoeda(){
    _numero = Random().nextInt(2);
    if(_numero == 0){
      _resultado = "imagens/moeda_cara.png";
    }else{
      _resultado = "imagens/moeda_coroa.png";
    }
  }
  void _sortearMoedaPlus(){
    _numero = Random().nextInt(100);
    if(_numero%2 == 0){
      _resultado = "imagens/moeda_cara.png";
    }else{
      _resultado = "imagens/moeda_coroa.png";
    }
  }
  void _exibirResultado(){
    _sortearMoedaPlus();
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Resultado(_resultado))
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}