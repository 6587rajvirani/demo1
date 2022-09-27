import 'dart:async';
import 'package:demo1/shared_preferencesScreen.dart';
import 'package:flutter/material.dart';

class splesh_Screen extends StatefulWidget {
  const splesh_Screen({Key? key}) : super(key: key);

  @override
  State<splesh_Screen> createState() => _splesh_ScreenState();
}

class _splesh_ScreenState extends State<splesh_Screen> {
  @override
  Widget build(BuildContext context) {
    isLogin();
    return SafeArea(
        child: Scaffold(
          body:Center(
            child: FlutterLogo(
              size: 150,
            ),
          ),
        ));
  }
  void isLogin()async{
    SHRModel s1 = await getSHR();
    if(s1.login == true){
      Timer(Duration(seconds: 3),
              ()=>Navigator.pushReplacementNamed(context, 'teb')
      );
      Timer(Duration(seconds: 3),
              ()=>Navigator.pushReplacementNamed(context, 'log')
      );
    }
  }

}
