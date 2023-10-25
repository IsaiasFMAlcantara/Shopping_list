import 'package:flutter/material.dart';

import '../custom/customText.dart';
import '../utils/colors.dart';

class Aux_CadastrarItem extends StatefulWidget {
  const Aux_CadastrarItem({super.key});

  @override
  State<Aux_CadastrarItem> createState() => _Aux_CadastrarItemState();
}

class _Aux_CadastrarItemState extends State<Aux_CadastrarItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomText(
              title: 'Cadastrar Item',
              color: ColorsCoworking.textpage,
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
