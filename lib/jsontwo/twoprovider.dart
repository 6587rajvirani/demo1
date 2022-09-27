import 'dart:convert';

import 'package:demo1/jsontwo/multieModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class newjson_Provider extends ChangeNotifier{

  List  newjavaList =[];
  List <MainModel> mainfinalList = [];


  void jsonload()async{

    String javascript = await rootBundle.loadString("assets/json/user.json");
    newjavaList = jsonDecode(javascript);
    mainfinalList = newjavaList.map((e) => MainModel().mainFromjson(e)).toList();
    notifyListeners();
  }

}