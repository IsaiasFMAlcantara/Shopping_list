import 'package:flutter/material.dart';
import 'package:listadecomprass/view/aux_cadastrarlista.dart';

class CadastrarLista extends StatefulWidget {
  const CadastrarLista({Key? key}) : super(key: key);

  @override
  State<CadastrarLista> createState() => _CadastrarListaState();
}

class _CadastrarListaState extends State<CadastrarLista> {
  @override
  Widget build(BuildContext context) {
    return Aux_CadastrarLista();
  }
}
