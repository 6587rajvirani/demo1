import 'dart:convert';
import 'package:demo1/shope/productModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Products_ProviderNew extends ChangeNotifier{

  int i=0;

  List  newproducte =[];
  List <dynamic> mainfinalproducteList = [];
  List<dynamic> filterList= [];
  List<dynamic> StarList = [];
  List<dynamic>collectionList = [];

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
    for(i=0;i<mainfinalproducteList.length;i++)
    {
      if(mainfinalproducteList[i].price! >=100 )
      {
        filterList.add(mainfinalproducteList[i]);
      }
    }
    mainfinalproducteList = filterList;
    notifyListeners();
  }

  void starFliter(){
    for(i=0;i<mainfinalproducteList.length;i++)
      {
        if(mainfinalproducteList[i].rating!.rate! >=0.1  && mainfinalproducteList[i].rating!.rate! <=1.9)
          {
            StarList.add(mainfinalproducteList[i]);
          }
      }
    mainfinalproducteList = StarList;
    notifyListeners();
  }

  void starFlitertwo(){
    for(i=0;i<mainfinalproducteList.length;i++)
      {
        if(mainfinalproducteList[i].rating!.rate! >=2  && mainfinalproducteList[i].rating!.rate! <=3.9)
          {
            StarList.add(mainfinalproducteList[i]);
          }
      }
    mainfinalproducteList = StarList;
    notifyListeners();
  }

  void starFliterthree(){
    for(i=0;i<mainfinalproducteList.length;i++)
      {
        if(mainfinalproducteList[i].rating!.rate! >=4  )
          {
            StarList.add(mainfinalproducteList[i]);
          }
      }
    mainfinalproducteList = StarList;
    notifyListeners();
  }


  void jeweleryfilter(){
    for(i=0;i<mainfinalproducteList.length;i++)
      {
        if(mainfinalproducteList[i].category! == "jewelery" );
        {
           collectionList.add(mainfinalproducteList[i]);
        }
      }
    mainfinalproducteList = collectionList;
  }

  void menfilter(){
    for(i=0;i<mainfinalproducteList.length;i++)
    {
      if(mainfinalproducteList[i].category! == "men's clothing" );
      {
        collectionList.add(mainfinalproducteList[i]);
      }
    }
    mainfinalproducteList = collectionList;
  }
  void womenfilter(){
    for(i=0;i<mainfinalproducteList.length;i++)
    {
      if(mainfinalproducteList[i].category! == "women's clothing" );
      {
        collectionList.add(mainfinalproducteList[i]);
      }
    }
    mainfinalproducteList = collectionList;
  }
  void electronicsfilter(){
    for(i=0;i<mainfinalproducteList.length;i++)
    {
      if(mainfinalproducteList[i].category!  == "electronics");
      {
        collectionList.add(mainfinalproducteList[i]);
      }
    }
    mainfinalproducteList = collectionList;
  }


}
