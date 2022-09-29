import 'package:demo1/shope/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CateGoryFilter_Screen extends StatefulWidget {
  const CateGoryFilter_Screen({Key? key}) : super(key: key);

  @override
  State<CateGoryFilter_Screen> createState() => _CateGoryFilter_ScreenState();
}

class _CateGoryFilter_ScreenState extends State<CateGoryFilter_Screen>{
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
          title: Text("collection",style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(onPressed: (){
              productjsonproviderF.Productejson();
            }, icon: Icon(Icons.history)),

            PopupMenuButton(itemBuilder: (context){
              return [
                PopupMenuItem(onTap: (){
                  productjsonproviderF.jeweleryfilter();
                },child: Text("jewelery")),
                PopupMenuItem(onTap: (){
                  productjsonproviderF.menfilter();
                },child: Text("men's collection")),
                PopupMenuItem(onTap: (){
                  productjsonproviderF.womenfilter();
                },child: Text("women's collection")
                ),
                PopupMenuItem(onTap: (){
                  productjsonproviderF.electronicsfilter();
                },child: Text("electronics")
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
                        Container(margin: EdgeInsets.all(5),height: 140,width: 125,child: Image.network('${productjsonproviderT. mainfinalproducteList[index].image}')),
                        Column(
                          children: [
                            Container(margin:EdgeInsets.all(5),child: Text("${productjsonproviderT.mainfinalproducteList[index].price}\$")),
                          ],
                        ),
                      ],
                    ),
                    Text("${productjsonproviderT.mainfinalproducteList[index].category} ",overflow: TextOverflow.ellipsis),

                    Container(margin: EdgeInsets.only(top: 2,left: 7,right: 7),child: Text("${productjsonproviderT.mainfinalproducteList[index].title}",overflow:TextOverflow.ellipsis)),
                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}