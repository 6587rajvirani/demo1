import 'package:demo1/shope/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatFilter_Screen extends StatefulWidget {
  const StatFilter_Screen({Key? key}) : super(key: key);

  @override
  State<StatFilter_Screen> createState() => _StatFilter_ScreenState();
}

class _StatFilter_ScreenState extends State<StatFilter_Screen>{
  var productjsonproviderT;
  var productjsonproviderF;
  @override
  void initState() {
    Provider.of<Products_ProviderNew>(context,listen: false).Productejson();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    productjsonproviderF = Provider.of<Products_ProviderNew>(context,listen: false);
    productjsonproviderT = Provider.of<Products_ProviderNew>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.cyanAccent, Colors.white]),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          title: Text("StarFilter",style: TextStyle(color: Colors.black),),
          actions: [

            IconButton(onPressed: (){
              productjsonproviderF.Productejson();
            }, icon: Icon(Icons.history)),

            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(onTap: (){
                  productjsonproviderF.starFliter();
                },child: Row(
                  children: [
                    Text("0 - 1.9"),
                    Icon(Icons.star,color: Colors.amberAccent,)
                  ],
                )),

                PopupMenuItem(onTap: (){
                  productjsonproviderF.starFlitertwo();
                },child: Row(
                  children: [
                    Text("2 - 3.9"),
                    Icon(Icons.star,color: Colors.amberAccent,)
                  ],
                )),
                PopupMenuItem(onTap: (){
                  productjsonproviderF.starFliterthree();
                },child: Row(
                  children: [
                    Text("4 - 5"),
                    Icon(Icons.star,color: Colors.amberAccent,)
                  ],
                 )
                ),
              ];
             }
            )
          ],
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: productjsonproviderT.mainfinalproducteList.length,
            itemBuilder:(context,index){
              return Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(margin: EdgeInsets.all(5),height: 115,width: 85,child: Image.network('${productjsonproviderT. mainfinalproducteList[index].image}')),
                        Column(
                          children: [
                            Container(margin:EdgeInsets.all(5),child: Text("${productjsonproviderT.mainfinalproducteList[index].price}\$")),
                            Row(
                              children: [
                                Text("${productjsonproviderT.mainfinalproducteList[index].rating.rate} "),
                                Icon(Icons.star,size: 13,color: Colors.amberAccent,),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(margin: EdgeInsets.only(top: 7,left: 7,right: 7),child: Text("${productjsonproviderT.mainfinalproducteList[index].title}",overflow:TextOverflow.ellipsis)),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}