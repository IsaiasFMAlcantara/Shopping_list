import 'package:flutter/material.dart';
import 'package:listadecomprass/view/aux_criarusuario.dart';

class CriarUsuario extends StatefulWidget {
  const CriarUsuario({super.key});

  @override
  State<CriarUsuario> createState() => _CriarUsuarioState();
}

class _CriarUsuarioState extends State<CriarUsuario> {
  @override
  Widget build(BuildContext context) {
    return Aux_CriarUsuario();
  }
}