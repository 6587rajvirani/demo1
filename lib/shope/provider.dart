import 'dart:convert';
import 'package:demo1/shope/productModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products_ProviderNew extends ChangeNotifier{

  int i=0;

  List  newproducte =[];
  List <dynamic> mainfinalproducteList = [];
  List<dynamic> filterList= [];


  void Productejson()async {
    mainfinalproducteList.clear();
    String javascript = await rootBundle.loadString("assets/json/producte.json");
    newproducte = jsonDecode(javascript);
    mainfinalproducteList = newproducte.map((e) => ProductModel.fromJson(e)).toList();
    notifyListeners();
  }

  void filterprice(){

    for(i=0;i<mainfinalproducteList.length;i++)
      {
        if(mainfinalproducteList[i].price! >=0 && mainfinalproducteList[i].price! <=49)
        {
          filterList.add(mainfinalproducteList[i]);
        }
      }
    mainfinalproducteList = filterList;
    notifyListeners();
  }

  void filterpricetwo(){
    for(i=0;i<mainfinalproducteList.length;i++)
    {
      if(mainfinalproducteList[i].price! >=50 && mainfinalproducteList[i].price! <=99)
      {
        filterList.add(mainfinalproducteList[i]);
      }
    }
    mainfinalproducteList = filterList;
    notifyListeners();
  }

  void filterpricethree(){
    mainfinalproducteList.clear();
    for(i=0;i<mainfinalproducteList.length;i++)
    {
      if(mainfinalproducteList[i].price! >=100 )//help//popmenubutten
      {
        filterList.add(mainfinalproducteList[i]);
      }
    }
    mainfinalproducteList = filterList;
    notifyListeners();
  }


}
