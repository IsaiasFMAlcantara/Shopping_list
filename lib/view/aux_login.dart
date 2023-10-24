import 'package:flutter/material.dart';
import 'package:listadecomprass/custom/customText.dart';
import 'package:listadecomprass/utils/colors.dart';

class Aux_Login extends StatefulWidget {
  const Aux_Login({super.key});

  @override
  State<Aux_Login> createState() => _Aux_LoginState();
}

class _Aux_LoginState extends State<Aux_Login> {
  final _formkey = GlobalKey<FormState>();

  bool _formValido = false;
  TextEditingController _emailvalido = TextEditingController();

  TextEditingController _senhavalida = TextEditingController();

  void _validacaoFormulario() {
    _formkey.currentState?.validate();
  }

  String _validarEntrada(String? mensagem) {
    if (mensagem == null || mensagem.isEmpty) {
      return 'Preencha o campo';
    } else {
      return 'Campo preenchido';
    }
  }

  @override
  void initState() {
    super.initState();
    _emailvalido.addListener(_validacaoFormulario);
    _senhavalida.addListener(_validacaoFormulario);
  }

  @override
  void dispose() {
    super.dispose();
    _emailvalido.removeListener(_validacaoFormulario);
    _senhavalida.removeListener(_validacaoFormulario);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: ColorsCoworking.ContainerLogin,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomText(title: 'Área Login'),
            SizedBox(
              height: 50,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _emailvalido,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          color: _formValido ? Colors.blue : Colors.red),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: _formValido ? Colors.blue : Colors.red),
                      ),
                      labelText: "E-mail",
                    ),
                    onChanged: (value) {
                      setState(() {
                        _formValido = value.isNotEmpty;
                      });
                    },
                    validator: _validarEntrada,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _senhavalida,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                          color: _formValido ? Colors.blue : Colors.red),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: _formValido ? Colors.blue : Colors.red)),
                      labelText: "Password",
                    ),
                    onChanged: (value) {
                      setState(() {
                        _formValido = value.isNotEmpty;
                      });
                    },
                    validator: _validarEntrada,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          ColorsCoworking.ButtonLogin),
                    ),
                    onPressed: () {},
                    child: CustomText(
                      title: 'Login',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
