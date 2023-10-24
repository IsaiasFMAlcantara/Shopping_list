import 'package:flutter/material.dart';
import 'package:listadecomprass/view/aux_listmensal.dart';

class ListMensal extends StatefulWidget {
  const ListMensal({super.key});

  @override
  State<ListMensal> createState() => _ListMensalState();
}

class _ListMensalState extends State<ListMensal> {
  @override
  Widget build(BuildContext context) {
    return Aux_ListMensal();
  }
}