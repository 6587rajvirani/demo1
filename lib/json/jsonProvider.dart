import 'dart:convert';

import 'package:demo1/json/postmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class json_Provider extends ChangeNotifier{

  List  javaList =[];
  List <PostModel> finalList = [];

  void jsonRead()async{

    String java = await rootBundle.loadString("assets/json/data.json");
    javaList = jsonDecode(java);
    finalList = javaList.map((e) => PostModel().factory(e)).toList();
    notifyListeners();
  }

}