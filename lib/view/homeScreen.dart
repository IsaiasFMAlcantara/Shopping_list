import 'package:flutter/material.dart';
import 'package:listadecomprass/custom/customAppBar.dart';
import 'package:listadecomprass/custom/customDrawer.dart';
import 'aux_homeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Lista de compras',
        ),
        drawer: CustomDrawer(),
        body: aux_HomeScreen());
  }
}
