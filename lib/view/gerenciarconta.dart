import 'package:flutter/material.dart';
import 'package:listadecomprass/view/aux_gerenciarconta.dart';

class GerenciarConta extends StatefulWidget {
  const GerenciarConta({super.key});

  @override
  State<GerenciarConta> createState() => _GerenciarContaState();
}

class _GerenciarContaState extends State<GerenciarConta> {
  @override
  Widget build(BuildContext context) {
    return Aux_GerenciarConta();
  }
}
