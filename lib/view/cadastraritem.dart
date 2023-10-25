import 'package:flutter/material.dart';
import 'package:listadecomprass/view/aux_cadastraritem.dart';

class CadastrarItem extends StatefulWidget {
  const CadastrarItem({Key? key}) : super(key: key);

  @override
  State<CadastrarItem> createState() => _CadastrarItemState();
}

class _CadastrarItemState extends State<CadastrarItem> {
  @override
  Widget build(BuildContext context) {
    return Aux_CadastrarItem();
  }
}
