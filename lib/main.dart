
import 'dart:js';

import 'package:demo1/extra/firatscreen.dart';
import 'package:demo1/json/jsonProvider.dart';
import 'package:demo1/json/jsonfirstScreen.dart';
import 'package:demo1/jsontwo/homeScreen.dart';
import 'package:demo1/jsontwo/twoprovider.dart';
import 'package:demo1/extra/loginScreen.dart';
import 'package:demo1/shope/category.dart';
import 'package:demo1/shope/girdeviewScreen.dart';
import 'package:demo1/shope/provider.dart';
import 'package:demo1/extra/viewScreen.dart';
import 'package:demo1/shope/starpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<json_Provider>(create: (context)=>json_Provider()),
        ListenableProvider<newjson_Provider>(create: (context)=>newjson_Provider()),
        ListenableProvider<Products_ProviderNew>(create: (context)=>Products_ProviderNew()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'category',
        routes: {
          //'/':(context)=>Login_Screen(),
          //'rep':(context)=>NewAcount_Screen(),
          //'teb':(context)=>TabBarview_Screen(),
          //'/':(context)=>Firstjson_Screen(),
          //'/':(context)=>newjsonhome_Screen(),
          '/':(context)=>producte_MainScreen(),
          'star':(context)=>StatFilter_Screen(),
          'category':(context)=>CateGoryFilter_Screen(),

        },
      ),
    )
  );
}