import 'package:flutter/material.dart';
import 'package:listadecomprass/custom/customText.dart';
import 'package:listadecomprass/utils/colors.dart';

class Aux_ListMensal extends StatefulWidget {
  const Aux_ListMensal({super.key});

  @override
  State<Aux_ListMensal> createState() => _Aux_ListMensalState();
}

class _Aux_ListMensalState extends State<Aux_ListMensal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(title: 'Lista de Compras',color: ColorsCoworking.textpage,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
