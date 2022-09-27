import 'dart:convert';
import 'package:demo1/shope/productModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products_ProviderNew extends ChangeNotifier{

  List  newproducte =[];
  List <ProductModel> mainfinalproducteList = [];


  void Productejson()async{

    String javascript = await rootBundle.loadString("assets/json/producte.json");
    newproducte = jsonDecode(javascript);
    mainfinalproducteList = newproducte.map((e) => ProductModel.fromJson(e)).toList();
    notifyListeners();
  }

}