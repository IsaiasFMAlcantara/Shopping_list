import 'package:flutter/material.dart';
import 'package:listadecomprass/view/cadastraritem.dart';
import 'package:listadecomprass/view/itens.dart';
import 'package:listadecomprass/view/listmensal.dart';

class aux_HomeScreen extends StatefulWidget {
  const aux_HomeScreen({Key? key}) : super(key: key);

  @override
  State<aux_HomeScreen> createState() => _aux_HomeScreenState();
}

class _aux_HomeScreenState extends State<aux_HomeScreen> {
  int _paginaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _paginaSelecionada,
          children: [
            ListMensal(),
            CadastrarItem(),
            Itens()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _paginaSelecionada,
          onTap: (int? novoValor) {
            setState(() {
              _paginaSelecionada = novoValor!;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list_outlined), label: 'Lista Mensal'),
            BottomNavigationBarItem(
                icon: Icon(Icons.app_registration), label: 'Cadastrar Item'),
            BottomNavigationBarItem(
                icon: Icon(Icons.storefront), label: 'Itens'),
          ],
        ));
  }
}
