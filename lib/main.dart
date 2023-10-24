import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listadecomprass/view/criarusuario.dart';

import 'view/login.dart';
import 'view/homeScreen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => HomeScreen()),
      GetPage(name: '/login', page: () => Login()),
      GetPage(name: '/criar_usuario', page: () => CriarUsuario()),
    ],
  ),);
}