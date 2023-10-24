import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:listadecomprass/view/gerenciarconta.dart';
import 'firebase_options.dart';
import 'package:listadecomprass/view/criarusuario.dart';

import 'view/login.dart';
import 'view/homeScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      getPages: [
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/criar_usuario', page: () => CriarUsuario()),
        GetPage(name: '/gerenciarconta', page: () => GerenciarConta()),
      ],
    ),
  );
}
