import 'package:flutter/material.dart';
import 'package:listadecomprass/utils/colors.dart';

class CustomText extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? color;

  const CustomText({Key? key, required this.title, this.color}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          color: color ?? ColorsCoworking.CustomTextStyle,
          fontFamily: 'Arial',
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
