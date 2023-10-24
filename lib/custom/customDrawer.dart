import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listadecomprass/utils/colors.dart';
import 'package:listadecomprass/control/c_firebase.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final UserController _userController = Get.put(UserController());
  DeslogarFirebase deslogarBaseFirebase = DeslogarFirebase();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsCoworking.drawerColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(_userController.user?.displayName ?? ''),
            accountEmail:
                Text(_userController.user?.email ?? 'No user logged in'),
            currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  _userController.user?.email?.isNotEmpty == true
                      ? _userController.user!.email![0].toUpperCase()
                      : '/',
                  style: TextStyle(fontSize: 40.0),
                )),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: Text('Home'),
              onTap: () {
                Get.toNamed('/home');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.person_add,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: Text('Criar Conta'),
              onTap: () {
                Get.toNamed('/criar_usuario');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.person_pin,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: Text('Gerenciar Conta'),
              onTap: () {
                Get.toNamed('/gerenciarconta');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.info,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: Text('Sobre'),
              onTap: () {
                Get.toNamed('/sobre');
              },
            ),
          ),
          Card(
            color: ColorsCoworking.buttomdrawerColor,
            child: ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: ColorsCoworking.icondrawerColor,
              ),
              title: Text('Sair'),
              onTap: () {
                deslogarBaseFirebase.deslogar();
              },
            ),
          ),
        ],
      ),
    );
  }
}
